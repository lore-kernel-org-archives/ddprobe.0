Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B0B15A7
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 02:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653791579;
	h=To:Subject:From:Message-Id:Date;
	bh=93Wxc8U+aFjbRo/vgpCzJUUE3QjUstwCqxjD952TPMw=;
	b=XMz3vPMqE41Xb19tzu1ep4XC3U5CnhloEvspnq/Z79nL2J16H48yPjSrzVu2R9tB
	ETa2pPKLQTeULT+NcCH2iCGAnWiUWs4OWovJ9boMiE4DzuE2gBCpWHm++Oc/zDer8Pn
	+Nddomc0qTyAb10PXuC0z/PcalthbfI39nJ59FsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653791579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=93Wxc8U+aFjbRo/vgpCzJUUE3QjUstwCqxjD952TPMw=;
	b=CiN7dCxL80nhi6is8Jebd8RsY9GlaP7s22xv9GyAwKlXmY6Q6QhittFyk0puj9Hp
	HC+/EJhXmFr+TooDPeIX9J2+55Zn6KwT1j3mthD8GAv9rnShaKAqm/vh/FSlwNJvSv/
	2vhCy95qEcKw0q1plbLMMOhp6dioxoMKm0ClNQek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810da8dca6-fd012667-7954-4637-86fd-516089a4e022-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21934a9ccb2f86dedf39d07f228663450306b9af87a94c59d40f34e3c14eadfb
Date: Sun, 29 May 2022 02:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653791579
