Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CC03237
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 15:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648394098;
	h=To:Subject:From:Message-Id:Date;
	bh=ECPTd3XVr1PI3myyddGFoZjuixdFe5trqA8RWIE3vtw=;
	b=FuO4al29UnPwrPQd2k2b1wPvUjEzZE5P5vOiDWsZfDJeqMyhWe54BuRe4HtNXzVV
	bFKp3Zw25nyd4FIxbJJ3/ziFat0w87rJp5Pjk3QoNMZxjf+/79YkM3v0u8eQ3kpc77e
	xCF0bgHvPIfyh+9Jk+26o2oXUnG/hOASf6tu5yjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648394098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ECPTd3XVr1PI3myyddGFoZjuixdFe5trqA8RWIE3vtw=;
	b=B5uwPwlXP+rcgfWLYlfpuZy3ExvCwaXUvJHPAqi/YQdDcsQK0/EsAH3v5OsSOVCd
	ZelOCmBY8zBKDeblQgYfk6Z3AVryDPhIEh+W48t8Hl6YmJRn7wh/gMsrtOMGHPoqInj
	Tw4k13xDLIVqbEXjXbBvjnUn57sZDUPNVx5PtlD4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcbf1d664-67cb6e9d-ae78-469e-b8f9-8b8f2b2dde71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20bdfcf5f1b53d3abd8bbbe09d58df55b4e1e60f4209ec2c2b74ed806ea08b43
Date: Sun, 27 Mar 2022 15:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648394098
