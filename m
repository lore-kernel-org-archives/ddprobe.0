Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7FB38F8
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647450985;
	h=To:Subject:From:Message-Id:Date;
	bh=IkM4WueX+o4FoTGLY7v0PEalRkaTol/tpdNMp92Leow=;
	b=X6YnGwrADaONNvXCfltop/dNMSCpZf3dGnywAuhYha8smKDCsXEWLWTI4gSUi7az
	DaoKn4WVR7Lz+FB9fKaTDfnTbTTsghDPIrQOhPKJgpjGU2tPLo1vgAwIYgmexnf5p0W
	VeNadFoWPfTkamNuN1kvJHdlS8vTwOQv8zvEXm0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647450985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IkM4WueX+o4FoTGLY7v0PEalRkaTol/tpdNMp92Leow=;
	b=RBUfNSjsTlcapE0r3fYHwBU7W6IEV/z+sFoq44TAtTJkqRbNY4xYIVJl3Av5kdGo
	RLnMoGEaKu8Z0zSrQ8ZyknVeFbPEOl3PjHU2FwIEyHGp72v46Y267umY2wDiMuvBiZB
	m9va/NbUXYy2YKWoj/xfwp5S9iC8bKBqIO/hl0/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f93bb1125-b7be7f9b-e8b2-4f48-9c67-efd8f60d3927-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19eca49ba6c5e03edef69112000f6f031b83e2ab67e4f59ae2d80121aaadcebf
Date: Wed, 16 Mar 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647450984
