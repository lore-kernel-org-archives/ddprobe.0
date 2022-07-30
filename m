Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC73233EE
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659190853;
	h=To:Subject:From:Message-Id:Date;
	bh=0PxS4gahVoJLnYRJ5Fk+0byr4ziy8xvoeEdPBmupyc0=;
	b=S0kEa/Ybo5GK+06IbKXo7wp/k9y6XTMTfA9tfNCNA/hk3XCsajuwYleuyAiufE3N
	mwL2bWA8vyOQqjSq0RIyCj9LoRwkXfaEjmlX73r4appK9gYf5JMWOBgXBEjro5R9cJb
	6bzmcd9f3j0gCBQ0sw3K7dAy8e/H0eb6m7idI8bA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659190853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0PxS4gahVoJLnYRJ5Fk+0byr4ziy8xvoeEdPBmupyc0=;
	b=RdqCJRBRivu/4PRUv8Sy603AWexXyM9cw0/dFmbKS+YcevkjtOmhpCRXv0f0RkPY
	w2rIytTiEsgt2UiR9EoOw9jSWGOXupRQmEJbjPvepWIdqY/LjDaHMBTuVCpHuPGGVBA
	UgJU0b1Wh5X8l3uLRgBjUj5CWvKrc3yZC9AOl7lE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824f7b3be0-8e6d3847-cbb5-4fea-8b2b-1420e725ee5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dc2b41f59be54dc873462e5ec5a1017e6053e1cc5b0372e61a0fdf81c405c53
Date: Sat, 30 Jul 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659190852
