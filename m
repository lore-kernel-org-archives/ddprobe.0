Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667F41DA44
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 17:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6957C433C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 17:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696266368;
	bh=vmSXJ01WFS3SJ9GFmc7H0up8Hp5vSYMGRdbVZzbJr4M=;
	h=To:Subject:From:Date:From;
	b=VtYlkeYpQ1q1ki/Z788DJlPRcfhX1EJErEyZDFbXHZbvztQHYRYxC8PpvOparn0CH
	 8cGcl3JzzV3tWQ3Y17kYbIFiFO6bHXG9TXDiMqKA3s0XiVJMWaQl7lU7kCl8xvqSQB
	 MlPHE+c+zTA5PhP4/NgvKSWKmEgw+BkMQX7Bzy5cETNE/Rx8Dl4gLavdsHk1Mex/JN
	 KQ1Lb8GomkQqrNdkNtyJJDvypkMNP+rrPfHg4qg+GeL0pwPokDRC4HMNllNUaHuo2I
	 qfQRZL4sP1hTvtY5Jq21GHlovBAw19g2XTnYcyTHQ1Imbtr1A2iqrUXplayoyIG6kY
	 3j/nrlNPYPvtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A6AE784AB
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 17:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169626636871.25016.2618574400944865990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb4650a01e810072639c02490163cfebf493774c2c56a11434d53b13c34fada
Date: Mon, 02 Oct 2023 17:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696266368
