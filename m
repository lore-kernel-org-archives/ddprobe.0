Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0797E4A9F
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647555985;
	h=To:Subject:From:Message-Id:Date;
	bh=p7voyV73Do6RZfiqaNygAv38uHM7XUG+v1aPTtujBnA=;
	b=bvOpW4SrzkmKaPFHAaJSV5IScdnFrsdcz63K34kLPK9eLnljYbI3YihUSwH+nE1Z
	p77Kr62JI+Iy25NdTZJW5dss1My/A3FjxNZDdP1x6xuFF0NR//8C/cCXBERFyw8FoPj
	2iHwHADQOX6hwMtnTZ7LGb2Eu1LZrzI061IfgRA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647555985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p7voyV73Do6RZfiqaNygAv38uHM7XUG+v1aPTtujBnA=;
	b=e68YWMdqjHm7NRFI5rdidHOsvTDfTx2uPCpsxCARu694RDsYWZ5y+kkuZ5w6xhq+
	otnViSPASBinER2GKnVEGdsBTfwZcOkasXOAwSbso0ebiex3IL4O9ws5MmCICK1wfsy
	G0lRV4hUbXuHeucYT5x9vviYcmexiBXlG+mtozKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f99fd3db0-a33a3eea-8427-4041-b255-1704097ca242-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 411fc457a601471dd41d67a8e0bb88c6eec1019c5b577f77070df3ef72419091
Date: Thu, 17 Mar 2022 22:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647555984
