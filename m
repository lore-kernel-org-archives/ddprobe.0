Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E9A4A3E
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 13:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657114612;
	h=To:Subject:From:Message-Id:Date;
	bh=1PjpYFRN/1LayAirdVT1q0f2+1cvSgtOiJEOZ+EwEmE=;
	b=b8EjscbP26oXWys/MKUDoFT4kmNxSTxq772U9+CaopjSn0cnFafcAYxqIfPJ54SU
	Bpy5Uj9YlXQx/dunGO5SbSq1qbKdm4ctHVfCySt6EVCdt6THPpyYlZvIhZXsG6xHOgG
	vwSCA4/7NRoGmYGZE+v5FYhkgVKsGG73bciIL1zE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657114612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1PjpYFRN/1LayAirdVT1q0f2+1cvSgtOiJEOZ+EwEmE=;
	b=eWRa/JLrdqPUg9ZO995kX8S2jENeW/jMfg5cIZHpq8GZ64r5zsTDnczXJf5mK2KE
	hjulcllZPLhy4AdE3tqijoKt3qSP4dgQHRIPWBo2jpba6O7/sxIap+1SNyivC+Lj2CX
	F2MnTIwzNOBlNdLcKfq0jea8d8by8E2qYFER8IDU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d3ba5215-93458f1a-9686-442d-b7be-8715edbc8465-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32657a14bb0c278e48ec50eef35e668ecc07dc35749d59278ed13b4f0906e526
Date: Wed, 6 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657114612
