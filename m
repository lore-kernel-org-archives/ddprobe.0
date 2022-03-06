Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F6A23AB
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646579185;
	h=To:Subject:From:Message-Id:Date;
	bh=TAT7y8BCKl4gR2TIWC36gDVGbLGSJsrZIXB0wO/98ak=;
	b=Gr76FW/z5KdeIYKsvJlCDCEhmMrJlfcy5RG++k7Kdjdjtp6R0IXt9SJaCGL46bCr
	qwYH1d9bKv24jzxp+MMrl1LL6UxNEysU7J+2ZjzbLi3GWmFeXxYMP0vp0mfF/OvKIpY
	5ACX20uHf4iqxCR+0iRf6HJ4bbNgZLLqwzJkxcNM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646579185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TAT7y8BCKl4gR2TIWC36gDVGbLGSJsrZIXB0wO/98ak=;
	b=GpOXSB4HUHHfU81QDiIYX00OvorWg/DYJKR8ro9W8FA7AbcHRckOy4ubBtsW5KIO
	HgsaNoZPdNJlSLdbUIVLvkm+LFMPuSOAKW7Eng/6Zk1TsQAvYTdYmGfPpt/GhwaaKZC
	Wkdv04ZeEJQinD974pAnMChk27Ld0HmyLt6GT6PU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5fc47467-1dc3c024-da52-4d6e-96af-edd0d63bb2f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b1004ec205b1bc7845755ec95e29669ada33f54b4d209965575be3610f7318b
Date: Sun, 6 Mar 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646579184
