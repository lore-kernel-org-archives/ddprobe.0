Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3385329AD
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 23:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652915459;
	h=To:Subject:From:Message-Id:Date;
	bh=ThZikXeLkUxi0HEoAe2wCx4AvzFOI4Ui4P5N1iRa6Bs=;
	b=LAQ8r9YrLk4SwL7TJm+yv3yfeH4XHTHEKyZ28XD+8ZJZf3XXokA35PNDuW+ss3f5
	lWVsAihhloFHk1g3dctfFwyEtaz+3AKxFfyoQpTJkEj8Loglyk2sAn2D66N3osq77A7
	Msvvr8fugsIf4Kc5P2s5UY5CSgZSDVfqxCIjC8ws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652915459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ThZikXeLkUxi0HEoAe2wCx4AvzFOI4Ui4P5N1iRa6Bs=;
	b=AweTC7lCp926MvzRjkooFdrAWWPAG1xkFn9A0hllNCT06NT3hV4tkhXhUlVLqBWP
	5JZ7+3xKHvipoRZLP/sN6nvPN6xyWIgh0jpojRG/t7pymXc6cfga581TY7nA999ZbG7
	kdV7UILayJfz9kQx9VjHszWNhaemnayHMXS2VE6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d97054cb-37186609-0085-4d26-b8a9-2638f1ad37d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e726cfa5a165b3ec98adcbd9c2fccc71ed0878df7c99749ecbf988f8a26cc47a
Date: Wed, 18 May 2022 23:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652915459
