Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69807A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 00:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654822500;
	h=To:Subject:From:Message-Id:Date;
	bh=k2Ar1xYuzVrIetEEb+asKa9D9f8P/gAkywhPNnGuTtk=;
	b=HiMNuS2furDBSz3y8lAmObVRruczXs0SVaZYnTuTm2MJQPYmGNIN8RHoR1ghZC5m
	rJx5nwnYh9Xlfyi90fKJyBSL9/3iNDXOtjG1r7p72nU/3uiR3D5VwJScmK+1aX92jI+
	qebvqsDDVIFJ2A7Crk/fwfMEWjbKWF8ZRMr1baK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654822500;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k2Ar1xYuzVrIetEEb+asKa9D9f8P/gAkywhPNnGuTtk=;
	b=X2sAjOYeYkxu3ZPxvXyS61LWvQaQ20rUci0HMch2abMLqJ/zMjmDtS+MoemxWzAk
	GBKZxLfR7s/PcKqaZZZbCuwoQrZQGCuX8pxnXG7zLFSZnjD1Ug/+bfuipRUnQXBuzLB
	b9NiuMnoF/G1kZe9lhX6/MaQjDyn0r7E0txAinLY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814b1b73bf-69e80e3f-8679-4e35-8488-37bc900e7215-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24c69b3e0a8707d0c77e2713cfbbbc42261649fddb24c6ff9df8e3e470899777
Date: Fri, 10 Jun 2022 00:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654822499
