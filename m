Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277357A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 19:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654975679;
	h=To:Subject:From:Message-Id:Date;
	bh=E2F8u3Bu3RTYZsI/WbaKzJRzBCptU6TrbxgGLHtF94M=;
	b=Dn4CJ+8UNBl9OhY4/Ov78GQe1l+3KMg3AuehQenujzXndttdFWH+x/9zn4HVvFFT
	r3wpRo5fJ+3cuAry3RoXPDaFrIB81RzB8cAQDQgoTo8+NLtIi9VbIqqkUamlquD+4Ey
	c/ujl/BuTSQezT7eHjhTJgEeveANUfEZR+/aA9bo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654975679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E2F8u3Bu3RTYZsI/WbaKzJRzBCptU6TrbxgGLHtF94M=;
	b=HtEv8lHcr1OCJw7ZFT8atGsIMoGR1OOL+rvRvEUhObnLUiwlgw9a4cHjtjTA5Ev7
	Ia4UBbo9pQEXylosorEB7BSewEvhN0AYo8DVEH32nBD3U9U9rA/2CI6PGk6+P0LQ/su
	eCHzUzcOB7VQC68Cn9gDQ2a6ylwjTXp5bPB0tDiw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181543ccb49-96ebd22f-ac41-4387-869f-5161ff08bd51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dcf6b896f0cb8003f389f73b77cf8b6ac87be4a2bc87aff11ba7258b6fc75a78
Date: Sat, 11 Jun 2022 19:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654975679
