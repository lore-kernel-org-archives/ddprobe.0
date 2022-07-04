Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434F215A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 02:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656901612;
	h=To:Subject:From:Message-Id:Date;
	bh=R1sLNnHjxwgQHtrNxgH3OpJi8dZQTsy0rqUmYHdxU2Q=;
	b=Q416Y2rkQUB5QXKjeUCs227kHlY4lXiXSlUdGC5Yyax5fYVmsWr84WHhYCXPgMsz
	/fe5HRPOZAISI6ZXPsDcHMvAvtN3EZ2IV0BVRmxp6uz+N2hDFFGnOf84TymjwvjjMsr
	QzC0ApgZd8sHQ9ZU8EwThbB7/8gvIJnVayGQxkoo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656901612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R1sLNnHjxwgQHtrNxgH3OpJi8dZQTsy0rqUmYHdxU2Q=;
	b=IjjC1zJBAoTUgusidW09nldrSxDgZ7XUPWSgRAvk3juS5Sp/z+xRVzRZglLBemgG
	HwBBipe8ozk4B9F+t8rgBsTCBPBaxreQENQjuZL7supimUsQUOYvUFq2mbMS3CFbE+4
	mRy5Ww34541++aXiQt7SFDdfSmtwDBVIm/cU9raE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c7083356-8cd6347d-8a18-42c9-a9e8-d1478923cd41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddd709af3e939979f59fe84a3a506057b378dbed07e1f9adcea80d1bafa07a4f
Date: Mon, 4 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656901612
