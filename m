Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C5F320B
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 18:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656267412;
	h=To:Subject:From:Message-Id:Date;
	bh=Xt58Ww9UlwqDhg7pGX+sDILQqR7UMp+Oku6wjM5SuIM=;
	b=lA2qPdxHbKLFgZRzl3dRiLSGM+DzDZXDLjx9IrPLW35OtgqUNJuSxR5L+/NFdppE
	E/eZQxRj345BcYSw0kodoQs/bq+z0MrDT1pv3jmQj++rXQVFaAEfZGaDuWIF933EMyu
	lxT9F79qGoPFMejkJidyi6Ol+IC+eqcZyjtqrByA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656267412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xt58Ww9UlwqDhg7pGX+sDILQqR7UMp+Oku6wjM5SuIM=;
	b=kbLesix4/8s+jVNIKJ91PAgRgGmuJmyStFqyMuaRm6ZoObYyP+o2Mmt8mMzdiYIn
	A/RIEmBJklN9lfHUCBlZ8fqUp0Tkuky2y0Yf4n0GrPCjNj6XJsiPqh6B/fx7CHNDyV+
	1Imfh/6Qjn29T4sUNfeQdyMq7AAZGKYaT/FuLcao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a13b132d-5ef481bd-3421-4185-b25d-08de889a39bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91773453823d8632c73f910e3aaebb6363e865444ac8b18066556c7f9417f956
Date: Sun, 26 Jun 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656267412
