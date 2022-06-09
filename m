Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1772333EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 19:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654803059;
	h=To:Subject:From:Message-Id:Date;
	bh=x9mUlwGM2CNFtJmcUsMxyeGqu901mb81eFJoSOWEVLc=;
	b=P2J8fiABdJJFV9NPiUORrBqVGbOahRrziHrOh7/E9jNnDyveEvO5U3VEZM0OGHLR
	hWkY0se+hozG6ubZ84H6A7ADce2Ga7eL1l9PxcaIBTjqFTHF6bulzQ8zVdYo/n7sSui
	y0CiHJB0zA6UgVXUkenEboDatiRh+EhG4W0Cvvb8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654803059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x9mUlwGM2CNFtJmcUsMxyeGqu901mb81eFJoSOWEVLc=;
	b=cXKoQWHF+Zmupn30p3qNya0h76MTraWqHMKifMDQ4BQIm3JatC8EY164L6g1b/OE
	Mrg0FJfJL4TN3cFKCqmvpcPF7DyFx5XHkDrv2PJ0M0yeIU8DoEp00nduj/u9SJO9ItD
	NW0zCbt7Ne3EftuLvXjSuYlLd+IafLkb1uazqrGk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018149f2d27f-788dec85-0c08-4ed7-9664-df7ad0a701b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d892b3e7e7e5c599a81d774fa12615ec4ed260b2b2bed5d373fb91717728396c
Date: Thu, 9 Jun 2022 19:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654803059
