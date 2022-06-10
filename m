Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1817D636
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 11:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654859039;
	h=To:Subject:From:Message-Id:Date;
	bh=23xyaAV+vRbM7QujXqGlXsgZ8cJwIP3IdeeWGTA2XUk=;
	b=SkOaL9hKkedQN3+K8n3ZckK2X7z5BDg07jOLLeJ1IZxQ5xrEdtg/BLoS+AhnLhcO
	pP4C5+nY2FO/OMHFI7DNagP43xDFvYCaMSLWZt7Y+iJ/NM660FWfEn7bdZQ3auWT+Gn
	huJ23GiJ4cOTcN3tEgHW1iZR8o2BcOquFAApGLIM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654859039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=23xyaAV+vRbM7QujXqGlXsgZ8cJwIP3IdeeWGTA2XUk=;
	b=k6mEfxusOeHaiYHQ14OelZPg3TKOQtHzexze/IBnk4t5eA5sWtX107Qswp6zS0bq
	F0uxEzBYJl/LVLZ9ZIJjO+p3uLzHut0Hk2c+y80GypL1rck/77eAvpY4++ox2zKAh5r
	F32/sEj1pnIrAilNVw0Vi9KhakYObfEJ7Gt2qRxM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814d490223-b26b33fe-8b35-4418-9b0c-6396694c2993-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfa839bf765696d008d0c38647b73ac2faa6cc1117cc2bee3e0a938175335f0f
Date: Fri, 10 Jun 2022 11:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654859039
