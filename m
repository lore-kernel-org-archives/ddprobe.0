Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1DC7C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 06:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657001812;
	h=To:Subject:From:Message-Id:Date;
	bh=0k/5iHmRDwRgBuUkRErVopdsNDZxfqvkZey3Sz2AT1g=;
	b=lQoa+n380w0y3CpRBpkmjJEcLdAIMXh5gcFMaGBiRC9vU6ud04osapv8V29LiZRi
	XcIZzakBTEB66fyQq5JRfiN3tNYKWRrz3aBWzHlBnWbzewNrBXodNWj+rR4PhqDC8S/
	5hK512xdHNvIf2N6DxchWY0ZzjdxXfRvAnSLbfOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657001812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0k/5iHmRDwRgBuUkRErVopdsNDZxfqvkZey3Sz2AT1g=;
	b=OTtqoO37P2U/vRPYLpwt21YfQC+Vt3mccczz10XOWEW7BKuhBfxlJ+GK092tbW5X
	AF98HNGFNzXv8muA+zzc3zgy+bmGNcmqlwmWkUhUbMTlUDalm5C/Pcgq8fO18nWqRHt
	UFEjJY3P/GGtxHbBEXea94BpMQK+99a2d1klMxrs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cd01211f-9ea6bc83-f1f4-4881-b378-5575c3945a06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38efd115d0c973113229d029d66aead453514f59d3d5cd92bdb1c09855a5b207
Date: Tue, 5 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657001812
