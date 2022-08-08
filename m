Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876E67C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659964852;
	h=To:Subject:From:Message-Id:Date;
	bh=VGXIRP0CsSyjjgl1WuVTbzc90/xYQidnneW5fjpCTpo=;
	b=GE20N+pFzxIK8Bl98tckDVtfCZzXqnld6XquXQ5LOfP/iWH+JgCNsDj8ETT5dhC4
	NkUGWWu70VhhG6RGm0Q51+VbgST7nvVNRAzzqkHiDTG2XDncQl80MjgI08xBcTeD/kP
	fyvTyYArlASXXbyHLkoNdT/VdOEUaxrmCP9p6guE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659964852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VGXIRP0CsSyjjgl1WuVTbzc90/xYQidnneW5fjpCTpo=;
	b=ViJbEqdFwH91qvM6+DuIilCevMcuXnMtUyiv9QmyW8ADTBNd7FQzermmrMalhB9G
	VnUvuh1iQy1t02nw1z/aOF7u7+usRNH4BsmAYP1diAvPkse8ovZaWknhsKdSiK/VyUv
	m1r4ByG5ArX6/F1PIbfsFtzKroXN3z+4lA/IxgHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827d9d8992-da3ecee6-3344-4102-98e3-bf31ce64f645-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16ef56593bea77c08ca45475394fe5ef933d868933543cd5a70f74319b67d9a8
Date: Mon, 8 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659964852
