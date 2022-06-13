Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257001842
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 15:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655135279;
	h=To:Subject:From:Message-Id:Date;
	bh=0C2CYPapNbRmmvyw1lFJK2/h81gLWvAvlcWBZWt1/j8=;
	b=aGzV+W9ohzXyi3y5SoHAYkzlUb0MU4EjK7PPRLM+gWptcI9p8D9E2km0C28/Fk4L
	TC3ANo7tU2HeCTkoEgm1j/WHWFbwaLxC58/virTmD8Yv5z+LUimwmlvRsx4n+QvxDzp
	Bnzy+CTvpfluLDkgnvvGwrrRDZLS1SPbLWMXZhqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655135279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0C2CYPapNbRmmvyw1lFJK2/h81gLWvAvlcWBZWt1/j8=;
	b=LgmEslWybjWfnoHYBKYmsIyzoTi4L/cF8M+xBeUz69MBda4QKeLCeOSJ4eiYNvCX
	BSSq9kSz046Vue1ygvCpdjB+/KKMlO+46rRtZHJ6Lgkxf/n1ePPWnKCpWHc+2YJBmOZ
	eUK4Ho3eaYpSXm1OVnG3PeRQ4v1jV96Sgh8dTlL8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815dc0189a-ae2cca9d-d0c6-471e-b6fa-88f45e267274-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f02d59b8eb469e8b01a2a1e9bb1232060ce63084bc025b8403312ae336897b29
Date: Mon, 13 Jun 2022 15:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655135279
