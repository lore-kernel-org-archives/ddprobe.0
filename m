Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2FE185D
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660711252;
	h=To:Subject:From:Message-Id:Date;
	bh=eqxYnp0ESumBFM6RDGZZmikw+ddzE8sEtBSKG5WPcdU=;
	b=Udsl8Vmi/i3H7XAF5AVwnN64hXgPcluAb/UjgweyLi0W9QhEPzDHsGdEkPbMK4Hi
	bGy2LNsEW3EF4BE1AOAb4HKYEW/5e8bY5jkVGXcioY061l9VUWvQv8yrk5rkhaN6gwb
	+Szwl2OqUqBzo2JLALpf0d9FcY3W3k9NjaR0okNU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660711252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eqxYnp0ESumBFM6RDGZZmikw+ddzE8sEtBSKG5WPcdU=;
	b=RTP4VE6jAqGmOAsLUsC7/OxZvdq6zt6O5fIhSfqo6hAhSp2MNK+WBJupB5a78laY
	APT/B8tzrAgwlS/f59AbWMQm7L+FPVyzi1qjl0gNxHTVW6czUKhMgqE293U8fuY01WA
	6CqMD5PFJ0b5fsgSTHiNlm0RDFQL/4hPHz1gXsqw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aa1ab281-fad5a036-3a1d-4531-8e44-e7a34ba466c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a17aed67f7ba2d6ee8d550d1d8d722e98a7058581cd974cf301efee58a1510e
Date: Wed, 17 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660711252
