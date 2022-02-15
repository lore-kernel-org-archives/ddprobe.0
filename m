Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E887C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644952584;
	h=To:Subject:From:Message-Id:Date;
	bh=707ZwEwf1gCB8y1F2rdPfjMHPQwTL7EV2myvT9Lng7s=;
	b=Rgy9OlRTwNpnZfJUaqK69AwDqz3mhhriKTP6GHNH4B9BvqGnbKhG3x61mwlW+XXR
	YPB9c6a4N17MaXmAmpOqQ5az/XyPaNdwde6ncygOq8AtRxXFFV0tOK1tfoAEvUMJiC8
	591JcG5trb1aX1KmQUHoUPZt8nMdecik63EEPiEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644952584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=707ZwEwf1gCB8y1F2rdPfjMHPQwTL7EV2myvT9Lng7s=;
	b=HtdbL3V4Z2ZlaNmWEGaSCvvBdFzrTYFud6OxU6YF+VsQCMIENZwc+63vkGPZ2Zgn
	9kqtRs+LfOzcp62HxB5UsfpmLj1JOBvDLyPi2RH6beFKAjU+1XX5uYuxKsWN12BHY1z
	yhboQzaNoVuqMGjzmFkVhlCDvPn6EUuzjRfhM1OM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efed08234-d5270996-b1a2-485b-bca1-4292f1e94775-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57371e31ce413ca1d3a7c6da0f7deb2c43d5a842b37ecd3b055040a47200cc98
Date: Tue, 15 Feb 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644952584
