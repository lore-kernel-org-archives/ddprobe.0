Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D1F23A1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 04:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656046612;
	h=To:Subject:From:Message-Id:Date;
	bh=lpu3aYe2EvtjtocbrJIGDB/Ka0wSVxDyRywD2qEutw0=;
	b=N4wUDKEvGKBlYp2mlDjCJFXV5ShZlnboXyka0zIxDao8ZWvuKowcUE9LBzAJCwkf
	p4aAglvMUBeovS9gO9Wt3NceUbuX471cTbTU/t8PStyXJ0GWqkUGBsNh0odnUUxQO8a
	LOcgUsSrgZFXzxBdzJ4+Cev/1RSxiL+Tw/5WF+3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656046612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lpu3aYe2EvtjtocbrJIGDB/Ka0wSVxDyRywD2qEutw0=;
	b=YMX5UrxUL+vOhK0Rc6kzdPEm7Q3j/8Ni2DrPJ+KryM6TU+SJMbkSBZ2gGRo+cBAb
	skjy8qLQMjlfOPXMw9fQlpSRROpNdAkbcp12vRG5G5a0c7uCt1P7RAkmgehxGp/wAmm
	zMqbrXN8Sin0bh+wQI1Yzf4zCCgQUKSgrk06QcdA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819411ef5f-f50a3b69-7fbf-4091-842d-867a8e4a5020-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02f5b9c5be9b0f097fa229400211076ab2f330d507ef8a42b5dde2667176faf0
Date: Fri, 24 Jun 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656046612
