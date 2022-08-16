Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B3C3D7E
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660657852;
	h=To:Subject:From:Message-Id:Date;
	bh=kwiQHreA4uqxVeNvRdKlNWqshCh4ve7fOaMkadHqedI=;
	b=e5njZ8BpDQXamCwhtunr0d/Dn76dGka0RG3O+sh8y58weAJdyDxz7dgvDnM//qfD
	AD9/jyJcDsTBZ2aw6LOYC0gkwmkv1IG8wv4xfgjDpqnUMauSzbNcYNjLY0z2VNjEYQo
	hV5wAfTHJtUe/AxeDQpr37cxjt4gAaeX7ltrrJ+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660657852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kwiQHreA4uqxVeNvRdKlNWqshCh4ve7fOaMkadHqedI=;
	b=ECRA3wy5JuRofUTBmvnOhK2iz2i+FbAyJlLtdBT09yLpynCh0LzZnqPGYyBvtl0p
	6kvFM3dElJQaGHXSRDiyIKPAa0x0z21b8HgWa/P11Ockrcd4Xl8ABD3dOQ6J+3y8IVq
	CM7T+/XmUU8mCuK1KL1Ug798JttOqXwogSsRP1n0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a6ebe089-1a713c54-ef76-4261-9e4a-41736df5277d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fd2405b4cc6135c15583ce3321755d1ab4c733710b21839dd90f82a8a340eeb
Date: Tue, 16 Aug 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660657852
