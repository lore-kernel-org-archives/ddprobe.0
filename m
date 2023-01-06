Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8698A23
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77988C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672969887;
	bh=XaQHe9hMJqB+jyuOzG2W7aE9S+SLw9mBkGlx9K59ZtQ=;
	h=To:Subject:From:Date:From;
	b=A9QUUhCnhV4p7l6G+INwfjCs1Bqq0Bh8Aj5fXiK4Z1ZqqceMrVA7UtLPmR/1BDFAr
	 Q4K1+B6fOmWPRoqErNz5qcdUDd9KcOg7FUn+3GMLWG8z6vx5xSaRE5dQm84VEsnWwF
	 7vnfmlsqdMKw2b1XIDNwpBwsT36ImAPjCX9CJmxwYpdq8qZiwp2kqk7rz8/JkirelE
	 LyVEeIUmdPBm1RzEYyKK+cyvH1lcRQsmJ9I/MySyvjX1NgGYzCd1bi1rZDe1I4aeLH
	 odempW7UFtzr+xlwl/sGJVQ+eUUDbTz+IGgzwceyWgB73E+RE7+7Um0NihKB48G2jN
	 gLno4pW0Xh80w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62765C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167296988739.13992.12075895702517703575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9377dc887860da8cf4cc250da76948b269f795767cba813f70d2da69d416cd1e
Date: Fri, 06 Jan 2023 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672969887
