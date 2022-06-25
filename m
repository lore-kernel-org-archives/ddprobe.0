Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEAA29A2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 23:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656200212;
	h=To:Subject:From:Message-Id:Date;
	bh=mtWgciw2pbg6azw1qnA4u5RJajgZaD6dmNhLMMf3ZC8=;
	b=jMipP7uG776Sl3RTYA1CD+Fw53RayhQeosgG7Vk+8DI2tWVsr6Nnaey5yU2WegWX
	lmG/QxijFAmclu9poY3QDTDbJG1DXvH6n2wpnWuz6Fu63LqJuVzxWNdz66n2X4qwlVq
	tAqs/PjIR9+ni9W4rEcofENrDqmX5wPbq+OzybG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656200212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mtWgciw2pbg6azw1qnA4u5RJajgZaD6dmNhLMMf3ZC8=;
	b=DblSQQ6P02Lt89HX/LATxtn4x1avexKn7bUMKI8XcWnDQiR4bbd2GO3OeDmex23C
	8cKTIOYmF0lMAsoO4gRk9wQcnxv1Dkkk2LBiWfG42tAHvK52fYlpiNAT6JXoyMC+hul
	ZBWHtHq2Ob2rVKAK+bWHLzY9/CK3SczdE+uER8GU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819d39af23-539eb6cd-e7f1-42f5-b5ff-05c7131d27dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 616f11113499507509632b175a3286c592c6836f6845c10c2be06b6e430b0073
Date: Sat, 25 Jun 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656200212
