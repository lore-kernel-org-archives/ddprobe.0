Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8DEB7F5
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 08:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654159619;
	h=To:Subject:From:Message-Id:Date;
	bh=xNMcUw5cs+gWf1nu4bE+IQhL+e/Sw5NQBAFxQjwXA0o=;
	b=ejtVywCW7uCuDvxLWrgkSdCeHUBDRJ3YEnbqPN0t35vOSssPR6hESY9jVrneGUt2
	DqrSizSwpbPLg+CYL8V4S0rDubmkI0ajm7ckicCunr3goRiceroVqV0rzo7inHBNOae
	ksSDz6PFX6yQp1JPtt32sQuIL7DgLZGUcHabdZAI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654159619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xNMcUw5cs+gWf1nu4bE+IQhL+e/Sw5NQBAFxQjwXA0o=;
	b=YsSESFzMd1I9VAu73pj+/oKCiHMd/8nPNuHNq265S06AAnceGwB65NlTKzfcoQOJ
	KDVx+lwuCbocC3D9Lr+Y2Cob3P31PMcrAEE29PQ30lHVAy5xxrRnlks34RugvKZ03fZ
	BlldbB0ih4wtTITbd1PlhwNzga0Y4PYaSDkmOp0s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812398b49b-3af18b50-8b10-4893-8d44-b831bb3cbf0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1c84122e2a21c5969303e147f6ae10c4f2d26d6cc288f32334013e243d3a299
Date: Thu, 2 Jun 2022 08:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654159619
