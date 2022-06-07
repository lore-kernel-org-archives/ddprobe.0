Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CAB320B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 20:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654634939;
	h=To:Subject:From:Message-Id:Date;
	bh=6axjEhc6oi/qsVGnCsMsni7kpME3ZpYXJG/q0sJirSo=;
	b=QMCrJ4BIjYIYiFIcRiK9O5TIdRD7mGbUKHQkKbPL/o3Mp8Lr18cC1jRiXDDM4G+W
	nU5S+ly9tHSKO6J0/aTw2Ot0IXFXDyNys5qpli8bnJE+96fvtbGQE7D5odXk2Zznwik
	mxI4yuWrSzPkeP/4dF+5AKfdM2jytBgr0BVxMoVA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654634939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6axjEhc6oi/qsVGnCsMsni7kpME3ZpYXJG/q0sJirSo=;
	b=PV90J/dKSzEz2bUfh3A02VK1N+2pJtuXZPd4NCTE5KEhmoyMjsVdXNFOPJKAfO2s
	855Rv21bi+lr6JJc/9nPM4xsfCThupFa7ilNTJLYytM26zjKOEcGmZHlINn6EhRDkQe
	N2BvIMItnhLxOSf4tza/vAB2cFQHN6lrvxSvhdh4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813fed83a7-86aa065a-1658-4b22-b957-a6108fee11bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6994b980c0d71b070000cd01ab05ad2ea795e361b3ecaa8f410d6e60dcfa8744
Date: Tue, 7 Jun 2022 20:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654634939
