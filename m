Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225BB7462
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656617812;
	h=To:Subject:From:Message-Id:Date;
	bh=D4o4n3Wh7u/Ic/oJCu1cTLj0OXDNxZioxJ/rix9KqdM=;
	b=Xr5+fIoWjw/2avLOkWiXObFaZNZ80gtvCfqNmrlAPUXU0QrfYjWXjdAt56EWjbAs
	JWHj+lKPJDQIwdYAu7DM74cegOQxYIHG4GU4Z9xprk5Jwb8DNkpOFIkyAsiqO+AECie
	fvxPBW5n/YCOSUxu7JTLBHOvYI9x7+77s5X6L5ZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656617812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D4o4n3Wh7u/Ic/oJCu1cTLj0OXDNxZioxJ/rix9KqdM=;
	b=fEnQki+4LK/qr3Ack9qNAkFawKBiwhFzw343GQNIWp3jX1rUS1/4qspJnkIIv5jM
	wD81E54yq8HiCFXXdD/8VFdWfkO0NAzdIcj05al0czp7D4tx04xJOS1fr/iAd1thieX
	8s662ue73e/41QLO/zQdJPuJ5Kz3ezDb0UFy4cfg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b61dc14e-6172dfe1-ff95-4571-a920-c59610c0a7ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c840825ca9594ca8ad8938d929323563e17f7a3bad11001d2d80483058f6947
Date: Thu, 30 Jun 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656617812
