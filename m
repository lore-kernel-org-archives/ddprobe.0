Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C77117E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647696084;
	h=To:Subject:From:Message-Id:Date;
	bh=5pnQOgulVoe7BSwe/3E5nwpG/i7yEzC/7i1kKRUgBIw=;
	b=i8Wa1X5C+o/JrEpj1JQtGuFwxtUuCRJ+9i7AKanlCkef40OHApGaFEJHg6EK5Nxr
	Mm3vHbBkbecpuvpRXKFB+R/RvY7A1eBMrXkVLxHUZv9G7QnUtcXv3xITHWmV6FviIRZ
	HT4sdyj348WY9R3rnEqMn2T4q0B/T2Aido6f9r6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647696084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5pnQOgulVoe7BSwe/3E5nwpG/i7yEzC/7i1kKRUgBIw=;
	b=SxnlQcOJ5cgfbvCrGfx/nNWnFxiMtwvo/rotmPGCqYoNdY16Cb3Tgy2pzES2P4Dc
	voh8m8q2/e+FOd7Y02RCr5qUG9yqReb9U+hKbvs25FORUT3kgCmbbYcHVugM9dPIr9V
	OHKsPMOP9AEMj4cdfBWcMnDEpFOowTELg29wQ9g4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa256ff41-50d7305b-f7f6-4fec-8234-e23aa314fb90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e44bea1a5ad7d5ca5c9da064c3bf3ee5ee2b9b47a4f70b8b7697ce204e65e509
Date: Sat, 19 Mar 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647696084
