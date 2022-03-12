Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A6D620
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647065784;
	h=To:Subject:From:Message-Id:Date;
	bh=rfZ1Fyu700rLxBFE8omVKBiwR0ZYARxRfq7d47Hs2mA=;
	b=CxOKej+tr4zYDRymup56DYfYcT3KJafQUcViZ9xB08/hL5C8Loh88ePye0H+0RMv
	A41dIXsDaiI8TM+SAvs468ThocteKXH2zT42g7HlAtf3+fSmEoMQZfjz8oRU6yd/O4T
	ctJsPBFkQYrHXntH8SjPfvdFFqkqFsXp4FI/wS9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647065784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rfZ1Fyu700rLxBFE8omVKBiwR0ZYARxRfq7d47Hs2mA=;
	b=FBTvFSJa0CbZ/hHjrY7MVv4zMeLOWjAfMQh+heQK613XvZg/BnNBYFvv60AKaek4
	ZXG2m5dEiq1OqyL1BSeoDCcrRom4ssqe2ZMDvPq5dPrNls3yg9jlI1fYSwEgp6jSH1P
	n511hjMs/VUILe6u7Xusg3PR6rWyDvLwm/NobXb0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7cc5619d-a3c1564d-b1ec-4958-9947-69f955c10a79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a2627456b0e3fcc53075aeac3b483dcdf4b83030c3c0eaa7e4593d570d7475b
Date: Sat, 12 Mar 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647065784
