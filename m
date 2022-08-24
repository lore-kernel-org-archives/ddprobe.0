Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5067E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661300452;
	h=To:Subject:From:Message-Id:Date;
	bh=ir+Uh4IFFOrJHHTlMM8yvEsqY+PArNl5vRbih33GfDk=;
	b=Jjsi624WI3A43P5lds7deCav3RWqW7JkvreJNUzlVSDbADpXc+pqgzaeO6kHcarZ
	UxhPvkTykdwsM5g4KBsPV6sKhJHrzWREshPyDzo4F3rTTBSyg0E0bv/pFtbYSvOLGxp
	DKG1yRT612D5Pxi8vLDycP3z4StIg35YwcRJWJXQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661300452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ir+Uh4IFFOrJHHTlMM8yvEsqY+PArNl5vRbih33GfDk=;
	b=DQQcWFL65+cdYSurwm+bo6ERV6Iw//G43lwGgJBKRoaMlkBl7sjpvD3gZubLccA+
	6yAD3HPN5dLZzTldmdTICevkhhgMXVzY7BwIJuAR2ut7HVc1EH5788kwOXFFLAy7v1F
	PY38XDnoEChoUJV1rDA/XK15TfHZMLMq0CHn2zsQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cd392cb6-b1421d1d-f8f9-4362-9a71-cfbc3baf7353-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07d6c8ceeb38b4006e7e74bb7e1b82f46b4bf39384d88f8935c0ed15d959d734
Date: Wed, 24 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661300452
