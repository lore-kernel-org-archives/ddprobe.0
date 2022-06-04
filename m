Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E41D137F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 16:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654358759;
	h=To:Subject:From:Message-Id:Date;
	bh=wAZUQe4+3+u/PNWXCM61/eWx8pwr3UE1LAM/6OVZaGQ=;
	b=DbTV7Kk4/bj3uWPsy9g6JACtHTnuC0Hp1CJVuY86eDjaBmH2vKIobMG+vhsdP204
	htffnBsUyrhOpsAuh1Gjcu4Ij52lepy4m7bK69UuT29cPfTQ26AjbP0FAwNerL3B6vF
	T0hc11NquIuz3ssSatwGnYpr+Eu780qBY1G16YRk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654358759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wAZUQe4+3+u/PNWXCM61/eWx8pwr3UE1LAM/6OVZaGQ=;
	b=Jwke9uyGmRbPutgikjxJdLpyAdumrWHwmJVq7Deh4/YkTicZqk9PXin2hL9WhJ/8
	opzYJyWwYUtxkYTkwmACC2i1SFoYymNj8TMhxJ4haA+tJkgmbj64qSZI8LTlO9Ns+zV
	83PqTqvCrJhSln5RydBmXsxjjTrBKV+lPTenOaKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812f77580b-d314055f-b6da-402e-976f-9e1e2b9d9b69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dec6284694e8d3a0f0c805016dccd78cb67aae44a4b6735d6937af0da0a670e
Date: Sat, 4 Jun 2022 16:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654358759
