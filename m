Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E9BE7C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 11:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654947540;
	h=To:Subject:From:Message-Id:Date;
	bh=wz+qZCFaMFkB38NmylwR7uVIrjyhGVioFURz6sbwHoM=;
	b=cyX45hdPDvRNR+NydBuZ21p2PnJhZzCGNa6UxGXj9by1O9zXDeEbRpYTv3GnPfDU
	E13ptv6vFIAnuaa2L2DnSX+MTzY9fya2yUzqZ2v+z2nOuLXrgKU+6jyHBlVm/2AspHk
	wRTALHw3M2EjxCeryRKRMWMAzf3904OlDHhqD4lA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654947540;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wz+qZCFaMFkB38NmylwR7uVIrjyhGVioFURz6sbwHoM=;
	b=O2gvgQElnAZhPbSFsIZz2IIHmsq+746uXrv7Sy0xnRI17dZGuWhwCegKAGafDI8O
	ccXrQAqyFxuekhdki3nWR8rRvji4lgnF+bWJI3IrntAP3ieyI37xMpefyM3VlqF+tvC
	O9FMrI0LT7N0yKZMhh6mkbJmDzKSy5pjqNm4ym/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181528f6936-df0d8f09-cfde-4fec-a84e-b6477c5968b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76f871ccad6cb809666f747ea66a6018579488c9f5d9cd8b95ee62ed1118b72a
Date: Sat, 11 Jun 2022 11:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654947539
