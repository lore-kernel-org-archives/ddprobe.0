Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137697C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 17:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655056499;
	h=To:Subject:From:Message-Id:Date;
	bh=GMy/+2vsmpunWIuvrnQXaVxnjAsUAHHctw35As/Ld3g=;
	b=ABqYibT0jXKASYcFC9otLukaD5jwZiLyYVTZEFiw5bp6OVgGKd752tEivH63m2LZ
	0pfxvJThP6o1eE7ucdqbg7hjCjLhF2Yu7Ctt8F72z06eq9wwQwGZ9iNzTGGZBaNbnhC
	cQEjYaLYiSu547r8BRGUpx0S2UI9ogAR7zvJ7lQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655056499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GMy/+2vsmpunWIuvrnQXaVxnjAsUAHHctw35As/Ld3g=;
	b=j9qcVnoHiX5EdyvuTQ9mAKATIGaZTVyaik7k4sGk3hVd7iyZrzK7GUMRYTqOAucA
	4keEDjPtWCYhLVKmMFHduaUeJWbixq2YbONqZoMmyk/C9erszRCI0N+85Iu5RxIoC/8
	zpTYgBzxfNxSrYyC6xpwyMgwLw/XvKLRvnATd53Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181590e0265-28505e98-8ee5-4a7c-b42c-8d3a821f14ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c243adda3aeaba3f17414a9e3858a9859acc9c0aac195b61764894f33597c983
Date: Sun, 12 Jun 2022 17:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655056499
