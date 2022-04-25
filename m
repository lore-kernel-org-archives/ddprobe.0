Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0565433D6
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 22:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650925738;
	h=To:Subject:From:Message-Id:Date;
	bh=BcpKWH0K34Dm5d2OiSkewCZ4OSoajYa9h0ZdLQNxSGU=;
	b=UyhYsGpqNF5vvYg9YdjG84cDQOGrllCgYwNiNTlZieH+etd+lJv1YdQC88gv/1GH
	bw0r2OIfEb0G7lasPzp0mqP/rzezRxZwmk3TdDOnOKSa8eIwniuFVnyqiM4PvHChC4H
	r0OJ1+obpHxRDBr3t6Jsx3/2AXmV5XJmQ6mGNg8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650925738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BcpKWH0K34Dm5d2OiSkewCZ4OSoajYa9h0ZdLQNxSGU=;
	b=gAHL2AtW0KvGcaTDWFkYPmkvTnaT5vMlxB0Wg3p9gFNI+scHnCiBEtgqsN6qIIn9
	hZrCwxGd5gkB7Th3iawUPK+LfyKTFVeJZ5GX0WVSuzVYCTSoaZk+WiLCI2xnvCruuVi
	tTgHAlwB8GLoo6NJxgtBsYhy7zF1U1xdgYW2VpZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018062d7993b-5de2a555-4cc9-445e-abff-8d39c8070fde-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f48557e5c3276023eea655b2f15452ca1f4264bf56e7cf49d040e710ef224db4
Date: Mon, 25 Apr 2022 22:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650925738
