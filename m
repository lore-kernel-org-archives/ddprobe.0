Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC32A23B5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656058013;
	h=To:Subject:From:Message-Id:Date;
	bh=iNm3H/vfOMILIr9kF29KM89ch9nwcWCEyqlquFCZ9Jc=;
	b=MvVddyIJkMcxXH57gjsclNPo+3l2iS9OPsPZjCUhZF0rWxL38BOWvDEARj13qcs0
	8BUchixIqJKRITLCtDskaWqAG3v0X45vszzmvME3dbn5qHgwh3reg+tuE+8MkB9s8zo
	8LjP3UIUu4H143hExU/GXrIdFI3a4/s+JnRV4mcc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656058013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iNm3H/vfOMILIr9kF29KM89ch9nwcWCEyqlquFCZ9Jc=;
	b=I31aypjmD5BllbccO4rePbYSaZyrzKQhd9vX1p7L4NzZ9aT2WEnGMtkb29o1aEVX
	1gtJml8yLGhBA7fpX/FfFXsF1QyNllf4jfbdF4FAUC14hN5WDL/tqmhp9VL5rpw+qz6
	Fq6jhRluZdYI8NK4nBXKETPRh+zrjgmJYPVLjR10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018194bfe26a-fa9dd76d-db09-438d-9001-d8f56e9b1f8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9f9135fc716b6e4b1e096737539a494ffbbc42b6036fb37f535bcf106d607e4
Date: Fri, 24 Jun 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656058012
