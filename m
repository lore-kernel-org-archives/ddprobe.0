Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A20D48BD
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645179385;
	h=To:Subject:From:Message-Id:Date;
	bh=F80mNuvm2f5DShryb1RuXqwnL7laDDy7b1uvZy4KMLw=;
	b=afwROfqMbLSW9P+u/qxetEnvmMGXTohyMjO/FKhAwS9jFfOd7Am5Am2XFbdt6M4D
	GWh7BtSTf/B76Nn30Bkx01WdoBB1JU8Vvci228M5C+9UPObLVQreZnPbSzt+4W+boRt
	lVa/EV/dIyjQyYRveIuye6SFM0GOA1QE45xalcog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645179385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F80mNuvm2f5DShryb1RuXqwnL7laDDy7b1uvZy4KMLw=;
	b=gUcwH9FK2rfZ9v3YnbtAl86x+iZwxfhH8NuwSzsMrgd0IxyPlNlnUrRUeZxHSMt6
	L2SU99ZJo3uDnSyEtml0dAWAoM0t9AA+V4szUZGZ/ONS01phm6DwRP+eP04Gz+37Low
	N0XDvj7qmOE5oZeW/7pRtIfb6Vxxd+p5hk7IRsz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c5533a2-392cfd70-49e9-4016-9ff9-cce6cede3b97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04ba49cb9de2b4c53e5953c7c2fd145483fb3a3f91a11f845c20b4bfb86f0c00
Date: Fri, 18 Feb 2022 10:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645179384
