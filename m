Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE537FF
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659666053;
	h=To:Subject:From:Message-Id:Date;
	bh=hAmvx293UVxzah4O+yqSUvU2O/yLLjd7ofWmpb8KCME=;
	b=HwKNjkZ0QBSJoifaY7wKR04I8KO4DwSymQVs8OHN20XQTxQVvPc8VAjpw6e7PN7p
	oiIJVORrgWEvKtOlZ9ewt65sN9bEgHU32sKZHh9KVmYRPja0b2gQmb5Sknfuv6+0LOr
	tFxLJvhqXnJxYmcPWZlc41oT40xQXqWygA5e7Sxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659666053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hAmvx293UVxzah4O+yqSUvU2O/yLLjd7ofWmpb8KCME=;
	b=CGL5A1yIs5mJuMjOLoLYpINMALoA19/Z8YhZYbIwkf0quWLTMRkejGmRlGO3dPZy
	i9vcR6qVR8W8vgo+wtCcPaku97/0n3X1KvMtcf71O2cYNe8hb1ytN3R+8c3uRvP6WG6
	0HUheqNnslcC8QR4PyHgsE84Tx4+Pu79nKqNYZ8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826bce35f7-a935add8-d334-4d12-88df-2992408009ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c5fc20605aa0b29725bd2e9e1a5d683ca1671c7e36f0fddb8424e8db047d18e
Date: Fri, 5 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659666052
