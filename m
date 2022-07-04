Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C6546A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 13:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656943012;
	h=To:Subject:From:Message-Id:Date;
	bh=QQOExpWREU8nPSL3azulGHEa0YNcSxIxw8s210XiRe4=;
	b=afH1Rc3N2lq8CvTniv5yMIxu7pAjGcx0s4VdBUBTqGoi2zFEj1CdAgmVs4Rklm/J
	Mt3KSZNNpop/vl8/p9EXj99pBz7i9PH7NsCaCb50A23GZ5Ugt+2/Tjxg/1C2AeGXf/o
	gEVG2FD7UJq5JFT5Jk183tcXEFTjGyilSbmnSaw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656943012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QQOExpWREU8nPSL3azulGHEa0YNcSxIxw8s210XiRe4=;
	b=iKtiDyWMVmMvgrWnC/idnxkTcegNgY1F4nbfs2a8PVrkuimi70XiMuuDmUIcV9CM
	Y3txiMBbq8+usl8GdPj4QOl/ayF7mgBOgI3CceiSIf0JMNbKJ3Ua36uRnIGnl+DpKLO
	Os/2fhcNwZD0q9Mu051+PvNzeK/cRht3MMNkomak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c97fe9d7-8719c2c9-ac7b-4b44-b79f-2ce5dc08f26e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd21521aa1914c9d109b364c4c3b31ac39c92b44622275c68ccc2b21676a1ff9
Date: Mon, 4 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656943012
