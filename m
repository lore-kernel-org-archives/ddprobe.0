Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FC01360
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659917452;
	h=To:Subject:From:Message-Id:Date;
	bh=q8+wDaxinTPsr5Uf/VxNQTb7ckWyEMNm2W1yWeafFos=;
	b=dZU4UVnoac2V+tb3BUCeAZIvY66IJ9dUIDHCf3dU8pUfZFBG9cCWyLPzuswdX3lO
	f/d95+UrJNes1ZepZFNCJIPLjmdPI/bmj8/jyYg0RYgQA4oxo2iXYGHxfbR49SYF/Ut
	xx0pUzjHH8NGOOvI7Sb+pzv9Xz+2rXIo2espMAL8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659917452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q8+wDaxinTPsr5Uf/VxNQTb7ckWyEMNm2W1yWeafFos=;
	b=dKsVkxqkiM9GkmJ7nVqBA/4H6v1yYSjGzdl08gtdOHnkPgBgO086yyPkhflQntDT
	X2Y9cuAONpPQzVIk7UmSlSpr5Zge4Nrfjn6I/0MVZibfutIgOUbGxK0XZSn/tDrgui9
	BkshwsLBeHYJwPFxpkMUqNY/M989Fmfr6a58aWLE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827aca4529-ff85008b-341f-4ed2-930b-7fb8c31c2753-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7bd86269f3f815171a6f44008473c8192574d1693484c9f20e03450f3e7c103e
Date: Mon, 8 Aug 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659917452
