Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD36315A5
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 07:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649921698;
	h=To:Subject:From:Message-Id:Date;
	bh=e+VzwxIzFm7BoHizhS5yQWd0pFfnHMeE4k6/OOO0KsE=;
	b=gza8MnxsSVCZrGbgrJlYcajHA7NxSJfcxKurzz0x1UzWSHCVJhEWYy1EjvPJMuXj
	DZu7rwcPQ5BDXMDrlzCDoy2B5IRDBFYWPU9gMQ0/wOn6XdTUN0OAq9/dola7Wd/FgQp
	KlVgORUaEzQvo1VsSCSh0I01KgJ6WEcSnShOVIPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649921698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e+VzwxIzFm7BoHizhS5yQWd0pFfnHMeE4k6/OOO0KsE=;
	b=EQ5T1RV5h53nVApGHKNYk4+lxIAat+gttu+HSEi/Pr/Ex06CsuyAKSLJXjbdNOrO
	2DeCBSg7X/KEv/e/Ihr0fix67ScjzwUhdxOTdmyj+O3HoV44z8cyCS6/o0X8NYbwwi3
	cCK098h59J2c0BJueF6wCbF9isqvtfYZ96EAmm/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018026ff29c5-cb73b038-1d8d-4f54-ab63-e74075e4a543-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad4ffc9d682083e722ba9d3b721e5385b2c89b3e22faa9736e44a37730e42572
Date: Thu, 14 Apr 2022 07:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649921698
