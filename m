Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670B54C67
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659109252;
	h=To:Subject:From:Message-Id:Date;
	bh=1SZYJ7VCPITqlu/8hk+qx6m/ZkVG1nK9gnKZwtxdFJA=;
	b=c6v2xPOqll260sSEwEKfiqSrSyr2+M6SeNml/qm1L93/qtJADrTGXCBUuTZG8Xc8
	Den8nhMwwPh/oQBAWtvOozMPoI3I1qlb2G1HAQHjgoUsvpAG9xVMaaa2V2ZyYBA02rs
	Ox0b2DPEbK/fynHgOb0TxjS1/EGgJzKUcFA1bCL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659109252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1SZYJ7VCPITqlu/8hk+qx6m/ZkVG1nK9gnKZwtxdFJA=;
	b=hCvXUEXwa3Hc1YL1MqTO9aelft/xer/afoh8ZNlB4kzaExXlO+KXTzXUsUKJfnm+
	xdm2r+51V4Crt2/dYCpXjpZmpQUFJn4jK88V1CzmsBVaBB5JX4LyonCclIgSmDG6KTD
	XzS2H02Pohyl7hvyrm3F3YYrYbdewOqKQZo1neGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a9e1e16-9d747a85-7090-43d9-8fd0-b30cda8c457f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4e8c98a5ca2f50d2416ed5bce3298de98e106606265df0954dc24943c90ac9f
Date: Fri, 29 Jul 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659109252
