Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6307E
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647179184;
	h=To:Subject:From:Message-Id:Date;
	bh=Na/felR6e5QXWPwE4dNsLs4BNWLkC6uBWAK6CVBGi5s=;
	b=lyVQnjEWSceczLofZRjI6qdk1oO2DCPDxmHgrGo0+JDhi0Kg6m/u4kiH6EFYbjXP
	6qJyLKGWMa0+GoRI7iFzihDGdvJNfhN+LN/o71z8MDeaapGsdNVzrP8NMG3Ocu3lG6P
	4m3KTBjA/mazT7iaM/dxlO9b2dpa95gXU6H44zCg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647179184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Na/felR6e5QXWPwE4dNsLs4BNWLkC6uBWAK6CVBGi5s=;
	b=SWB/hJKTuzo7t7QHQotJiIkDD1f/00fFeUGjuuTk4wPbXgVtO4adPKgjpm/MCQER
	EP+tEmOyBA/u8pYoUC8MsViBGFarNW1C5d36qxZW/+waps6Pm/nIhvnPmc7p/+s5L/z
	xUNC8onGQTefSuByv143WuaEayS2q/1Ji5FbUNPs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8387baae-347a3416-0aee-4cd9-a52e-7c6c0843651d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 623f5c127ff273081fd50b7ad1d8982bbcb6279f537141974ebddd1b084830ce
Date: Sun, 13 Mar 2022 13:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647179184
