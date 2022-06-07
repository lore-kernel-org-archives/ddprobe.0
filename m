Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102107F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 17:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654623779;
	h=To:Subject:From:Message-Id:Date;
	bh=zd9GzpQW05YLDpSWOhrYemVBIUpzQNQcFr+5xfvYFGs=;
	b=B8mPfsqzv90qXOZmktax8OmFVi6PT6CkcZeH0QtYdEsMoq7/T7NPeGwv8Tw3iEd6
	L5LagFKHNjt6MyRuYDSfDTug8C9Gx293jwbocEo8MUoMrEJIqDA2B07aLRLeGNOtFII
	I/adtQ7ATg1TxrQQoT4KyOd9XeBV477UuBUONbTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654623779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zd9GzpQW05YLDpSWOhrYemVBIUpzQNQcFr+5xfvYFGs=;
	b=jnLGgs8PgJgmw0JOWYJqcnYs2D8YkFdgc+f5GF+u53A6LvDePVEtsdeupebYcT/N
	TPe8TSom+1x9djDmxcm/HYFRJtrxblcH1a44p+zb3eSiuavJa6KhRAHwo3vOztRYctK
	C7dGcgvfPtCsJLwEW5lfy3lFljy0wYOzHDDboI/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813f4339c1-39d583f0-79fe-47fa-aa71-5e2a221cfd89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a25ef71c9c0b2f788f7038b36f501397789894e1a5fc8a6a1baee6e54cf4e7c
Date: Tue, 7 Jun 2022 17:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654623779
