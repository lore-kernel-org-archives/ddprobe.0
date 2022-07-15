Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1630C2F34
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 12:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657887412;
	h=To:Subject:From:Message-Id:Date;
	bh=6tcxurd7frqbw9+k92G2JJ9oMOxEtHINtm0DDGWsErg=;
	b=G0COlBVKiwwNsxuXDgu/JIUFDL3o9AqiIuJhJxOqHs26dHG5rYzcL0UmBXuE22fU
	+JS6BDuQ61pAR6qKil9v+BQD/5Kj/CaxDlvEjDbc6oObHIhdb066jLx51SpX5naNmF3
	qvcNuJqmZHCpGWp0Tz1sWChlo1i+2GXWwDdaxv8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657887412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6tcxurd7frqbw9+k92G2JJ9oMOxEtHINtm0DDGWsErg=;
	b=jhDxiu8u5bjKTNT0h8M1Z6bDilkPDRZCNY5HyFUwF69aEPX/JtCTwNruWC3Rr463
	QfcYKnmlMx0SOseMmf7JH9Um+SN6LBvrLryZAQs7qhz2WTqfijODm+0ZkTQAnMxvNbK
	DIJFh3COd+N0Ys2eppp3vCWYDMdLsaEzUfgdd4Ys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018201ca504a-17e8b71f-9976-4b87-8c96-fb787fc23720-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17aaf2ee28f22e768e6cc8f8ace1091cba14fbecb89605e69b70d146e8023733
Date: Fri, 15 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657887412
