Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3972F3C0A
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 20:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658176012;
	h=To:Subject:From:Message-Id:Date;
	bh=lb5/9me/nEcoLu/XOpq4IzzG4TQFO9QRugugpByW0zE=;
	b=Xd5eOmMjymz8qtLEHrdUXtQ4Niv/S4ZUqqx5JReC3yvIAeGxBgNZgvnfw4D2tXmU
	aYG67xapgdfGG1/Gx62HPocCR5fOKnwsvKqgcC/Rn4jD6EDaAFul7MTRlL8TuH7FKkA
	W/fBr6rvELoaXD/GMmb+bM6ceRSdSREPi2tWliR4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658176012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lb5/9me/nEcoLu/XOpq4IzzG4TQFO9QRugugpByW0zE=;
	b=GwhxoPzy9UBT8iNMOzbtVsHO7oWF2ogUgzRwvLzNFL5BasHcl752RuGGOTKyFZzG
	GnzFcXRAB0c8jNnDnqV73gJj0SD2sD2up5CvgkUwvshARSq9E5M8RyWpzxajZRlmqId
	WTZdGyu+ItgVYJEAQDuJ0/fLnuN4Z6aHgjRw+ido=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018212fe0040-784e0ca3-fc19-469d-8a98-6768a9f4558b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cc0cd7b0f9720d529d70ffdac00a59a2277ef1dab7459df168f959d0eea6b3e
Date: Mon, 18 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658176012
