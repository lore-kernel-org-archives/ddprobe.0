Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3384AA5C
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 21:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652651280;
	h=To:Subject:From:Message-Id:Date;
	bh=wl4YyuNp1PH/Qg8qWXE+5T76EsTbX4O9SaFtwvlQ71E=;
	b=NUcRlkvex7ae/mcljjceZe/yUL1f4SaUb9uP80G+NqUM+/Ghwulgbr51uNhTmhn/
	orDyoWvpGU2Mlh60oOgUm2xNxOxQtImbphSd7Cxp2o8FX4frxFyWPqgvPzQqJ85hDqy
	beA09OxLFxRiZljZB2iQhtbTfAJ5jvhQ6krzXY0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652651280;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wl4YyuNp1PH/Qg8qWXE+5T76EsTbX4O9SaFtwvlQ71E=;
	b=Jo4CEVYCpi/KH7yAYA59sZKNi5OD4cenaCNs8YbGHrpzqxYWF773dtKmklnirpvz
	D/GtfXW3Z7fMtOSMclTjyKESv7+tJ1PIlaIDeqwyery7XSIyX/e/3hfdKEe5BbVAZUt
	W+90v42jp5TdhO8uYm7R9Vpmy4yLRP21ukGcGbv8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c9b143be-cd939660-346c-4bb9-b3f8-c330a11a65cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92128c75bb1ac8b0db880c45a7be819d42b57f22116dc11e18ad0378d110136c
Date: Sun, 15 May 2022 21:48:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652651279
