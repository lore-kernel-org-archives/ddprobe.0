Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6152B7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 19:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654890179;
	h=To:Subject:From:Message-Id:Date;
	bh=+2BVmhSIlzxB2cCNcDjdJJtAzAqBrQe8fTnNhKor+g8=;
	b=Fj4hS6K1BNRTW3hfz2/PtkF5peRZewhcAZ4+/5Qcn2PnJPLDeZ6kEPB6jtzXIhqU
	SN13knsghUiJkDK1idxbZRajV9J5T+oJUUSP3JZWND4mQULLroPe5uiaJFq7ycp4Cee
	d/cpmkJCiu5fJNcXRQV5+WceIuMsbE2kHZ0Ge2E0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654890179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+2BVmhSIlzxB2cCNcDjdJJtAzAqBrQe8fTnNhKor+g8=;
	b=BzVuOrW3ZmvePHq/8pXw87ocdR4/7v8foZUhLLGBdHRpRtYGBhwoWH8p6iziENDe
	5+K1Qtu+jkkGKXN+HtcTmB9frPqeVS7/ArOizqHYNIuF+r0BfjFy3AKgeIEIdakaHls
	ea4GdMgXOGMYnSFnG43el4yk6N6KCt0YVsl+JoUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814f242a7f-1fdc5432-9412-4dd6-9b31-670d837fcaf6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ce77dd3ca3d4f089d733d6eac85dfd41ad645779f993d3f8e4f75872aacc07f
Date: Fri, 10 Jun 2022 19:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654890179
