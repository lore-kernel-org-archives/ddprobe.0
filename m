Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2682710F1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 04:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655096219;
	h=To:Subject:From:Message-Id:Date;
	bh=TpMiZz4MdNAX165jgBj+Nc0aYbLZNjNKHOnsYrrQaM4=;
	b=V0K2LDyqpqChyYerxNt9Fzh8oXUmfmEsZbJZF4WbV1OtMeMsCPh8ZkJlCNIeQ3zv
	o2pomNwsH5ZrdeItm9zwB03Cgm3ByFGbt8uAg3yTWM1m8vytjD35hSbbJck8J2NtwZe
	j+IM11RVo7YFkDi0kraXoBTPIBWwG33nMYVl5ugY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655096219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TpMiZz4MdNAX165jgBj+Nc0aYbLZNjNKHOnsYrrQaM4=;
	b=ggKURHgEPJ1IQgSRSTIQTc5JNtY2bt2BxeYyGpEnSDYmWDswKKo3YO1dy+G8Ocon
	KbhnD6lGLjgY+OJf7oQsttrZIM0xtGzOhe0gJ7Y3ZC5/dN5k1CNrCb6t77+/lzrzcyL
	tp4z8RSis//726RVnepkzLdC9FaYfPgSk7b6rfbY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815b6c165f-09850892-4be6-4415-af57-50e010278dd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 582ff7afdfe55ea1385cea45a45a697f868accf4107ad3299f675153d25d7c1a
Date: Mon, 13 Jun 2022 04:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655096219
