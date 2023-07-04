Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D325882F
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 23:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF450C433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 23:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688514968;
	bh=apsrmqaprQFhXXLnrOJsdP4ArdPWirRbQ8OdQyslOn0=;
	h=To:Subject:From:Date:From;
	b=T+HCljNux/hRhog1fYVdsbKmTcNu7s8KuAoWOx0jChV9JgYk95dzUXX2ghBb3AfF3
	 CVDYqdQAIIlfF19uXK3QSeYbH+LfyPOrAKNn8vEN1zdRkxrOflSYOqncZCbLiaXrea
	 IBGJutHDrdGs0pWTFHcfZrI60cBNXYujJlxyjQUulHefI8DbHzPvAd3lXNNmwEYs4R
	 IKW7JdYJ5lqURT96ZmN/sVsHqEhxclgMcLKz949PQf+XDFoAXKZykoeze5vbUvZlVa
	 MedRH8JtnCGpTHZ7V43O8dLY8ruGi13QLY6I2ZCTmZou8JPtwPSyLQQJzvXu58NHUF
	 McogKglyi7KgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4693EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 23:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168851496866.16706.5735990930262768869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ea6b6c087bc4efb17efbc96dd65a5dd11b7ea189e749750154f89bf64cf1c3
Date: Tue, 04 Jul 2023 23:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688514968
