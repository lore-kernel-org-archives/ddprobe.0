Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69461187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645016184;
	h=To:Subject:From:Message-Id:Date;
	bh=EHrNeVZOFdxwVvNmDJEDOVEJ+fkUq7bJbmAwC/iYVjc=;
	b=dNqXjpFWuJasNkVlcyRtcmjJBX8FMUAhGeBhpEmHVXBbXc+w34yJsVEZrApx+vET
	uv0QrHzH7Epb3cwV4pJ2O26hMb8wxXuOdRW2xhLMsT+0NcWgFGTJsFCfQGHIxgIFrBA
	Okg1eHHENH4C0+NgkIFB2tcscV6eZ87mSTSEcae0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645016184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EHrNeVZOFdxwVvNmDJEDOVEJ+fkUq7bJbmAwC/iYVjc=;
	b=YGcjHvcNrgKgal7xqeLrQ/vKNcqcmYLpK9A5dB+mJ+tW7hqbuxaHeDO1pSlWc+x4
	O2An32TAAYRksEEGAR/oNoJLUOnw962FiPzMnf3y7MJs0GGTXkVJy2D4qj8Ow00xiSI
	1uWUzI7MKOhPcj3S2mv/H2Ps4VqYP0UUAUCisgBQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f029af7a7-2b8f9ee6-19b3-47f5-b91a-6251718c9f81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb017d23ecaef900c120f02105f86b615e28a35a18d1a641a702cebd9023d846
Date: Wed, 16 Feb 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645016184
