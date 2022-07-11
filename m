Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1FE4692
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 19:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657567613;
	h=To:Subject:From:Message-Id:Date;
	bh=yIOiCfWp/8Rt+y08EEfENTdHDwEkWY64Kq+a+HDiMdU=;
	b=PqNRvopeJOuG5lpwPEP9PHPyJw8LA8FtxxQS6i9iWivGO1uyyHem93C7fgn8d305
	+FF+ZK818BShwyqZOO4Hh1zTEFnOgQ34GBfwFHkhdzCgCVdP9RTD6M+nYcX9fOH5weq
	tfjA23jt/lv0Ne9LhFPDuBGJA74+X4VuE1PVUfc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657567613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yIOiCfWp/8Rt+y08EEfENTdHDwEkWY64Kq+a+HDiMdU=;
	b=B78mC1NSIyolYzXxTtbgpj6XOh3DXng+JIZ1vZgKkvTpGSPKg/LvK+gLvvuwmuGW
	0+vIKUWOLawCqek5BaZMdywlcL1C6KnIzENaAq7XXHgGh4oqBczGgKL0iFWq+vW2DU+
	8IrulCXZ6vM66q1Qi3sdcSMsxsXFvUrxRUSiU0Jo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eeba8dd5-e488df51-2aae-4b31-a5a1-23eb782030fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd028093b54277d1f83d9e714dbdf642739d67b7378bdb4628956c22acdfa03f
Date: Mon, 11 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657567612
