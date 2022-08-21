Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D17C3FE3
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661120452;
	h=To:Subject:From:Message-Id:Date;
	bh=3EabCKRDgU6AeKQ4kRsMwHgHpr/XHyggyFjwI3IjtMM=;
	b=P+PgC2oUXTS6IVvcS8W51vs3UXXFgaYgKKVLFz5k2xAdJRTILduKzIf6Nqg8BHNg
	Z4meaoA3qFBItFHyvZEf1N4mFEsHV99MnSF4SutVmKklW0X8gVnwPnnmWKaSPTTUvkq
	WubIhN6+pOAu6eio1E+7bxT6kgt1vQzLUS0dte58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661120452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3EabCKRDgU6AeKQ4kRsMwHgHpr/XHyggyFjwI3IjtMM=;
	b=f3DcKcSnASjNTcrnH0/BObf2Gl4unT6saFdc/uyqHXuKdybzuv2+p9fWTciX3Sby
	iYB0ndukCAHcuwC0T58DUkkRJU9FgXeSo9FuUfuQv0i8wmb90moDeyYuo8V7j2xpFJI
	AnvDIbIwBuFZUuHMxey3rFyX4LWF1crvQFAT2sFw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c27e97d5-0d42b7fa-ecdf-4415-bfa7-aa61420e54a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2bb9885a7be6a49c552a13fa50df6b65f5a3821b73f716b1f71185dbab93059
Date: Sun, 21 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661120452
