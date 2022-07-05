Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B682F56
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 13:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657026412;
	h=To:Subject:From:Message-Id:Date;
	bh=0dNPWm+l1xuukY1ybLely35ds56shA9BrVIZxvN/BhM=;
	b=TfCC/EPMXAdEukxi56Bsp1wEsR7QC9WBQ1HyQ+cXqGgHFtePBYg7o/Ha3tHGk0Hd
	PEi6qPJ2oW2I6tGIFzALehxMq24eXU4Y37OtdVgYhTLZx9JoQBktjQFPqGvo6NwoSCn
	FIGeghTtIOHJAo/BW0an4PVHudhCv2CW2sD9YWZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657026412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0dNPWm+l1xuukY1ybLely35ds56shA9BrVIZxvN/BhM=;
	b=gOCDssaZl/UaoKsgS0i7WrB0bAxH2jYbCWOfPahMHY5nZ/SzuweqR5Tg3eRg4rKt
	k78SW9b0TmA73eZsLYE3gXy8EmVeNDu8GvZnV/OpE2cxf7xvDWjewusZ+wdh+Xz9hUt
	ZsdO6trGUWVJaY6oz5Jgogkm8AZUNEp6bitj9ni4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce787ee4-96a57213-812e-431e-95bd-7052e52f5195-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd597d4c399ac671d57b0c261145bcd3f308a13e59d2979803e545169dddd48e
Date: Tue, 5 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657026412
