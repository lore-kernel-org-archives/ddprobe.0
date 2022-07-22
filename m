Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD7B15A4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 04:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658465812;
	h=To:Subject:From:Message-Id:Date;
	bh=wQZLe28UTzmWErYxLLuK35BUqui0S5gaYEIlNJyGnVY=;
	b=X50J0mc7sp0q5yZEACX0ryUVA8eerrT5p4QbZPgCopq3l9fYYNdafkP6lYb7sGMW
	tqAJxpWCI9iVdl6gF4xQn0+VBgBWHNAfPfOUpJja5bOmIWayVtLW+0HTh9VFTSOiJna
	6HwwDj5WR6ZuDxT71IACntjuyGDElFp/QWyJ/kak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658465812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wQZLe28UTzmWErYxLLuK35BUqui0S5gaYEIlNJyGnVY=;
	b=EBL+0akGs6XdUJYpdHH1Eh7C1zn+b8Z2py4eYm80kBYHH8AoBxoV4Wo43pcdV6Zz
	1FfFBSCopJwA+/M+bQjVSAepT4FVbAqhi95c0eckHtkbS+x7IEfSEk3X2N18ao9Otw4
	lfuP8Pnp7DO6IrbqsykS3Rx5AM5UtdqrCSZRjpRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822443ff64-abb87606-3b9f-4196-945f-65a10cb2c841-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f57b025664c064751f3a1bb3e6c985279093603fd5dc620c3d95286607b2856b
Date: Fri, 22 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658465812
