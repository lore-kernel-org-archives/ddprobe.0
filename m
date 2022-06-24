Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353BA7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656062812;
	h=To:Subject:From:Message-Id:Date;
	bh=F3Wvo3Dum8MLSOzHy/7lY4+T+svNeyrPlPlkDW6Wn7w=;
	b=LM+rXYb6Ut/a3UiKjb8fjNgWpPGAJiZi84aTEJfM2WHZKwK8eaWc33leaLoYFVmv
	IEtjGa2R9uyC0q7W+YE7CFp9GqggNbf2Oc7JN4eurrkM+zIsxe/TqX0KvQNMQbfYnLL
	KPcA/6NoTAefzPBfMY3VTN5mYBmHC2RXFrQItmbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656062812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F3Wvo3Dum8MLSOzHy/7lY4+T+svNeyrPlPlkDW6Wn7w=;
	b=H+nMPz56yu9efOhk56f7aNu8IVdHydUMOEJup3eig8D4NMJcNuTvirGG4aMOF2NH
	sx/5mKblQ5APmpZNyS5biiH/PUNMP6f6J/ItWcAbBHIyqBU7Sm3sCET3m1ot/RWrSUU
	oDlRnisiOxIsUJQONv3Qdn4SIOhozx78REirPFP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018195092092-a5c1e2b7-2f5a-41b5-a67d-fcf65ee869e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d2c48f793e604a732a7ee1c6d25242cb495e8e618e37d4afd847950aeebeff1
Date: Fri, 24 Jun 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656062812
