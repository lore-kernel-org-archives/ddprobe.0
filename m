Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5867E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646998584;
	h=To:Subject:From:Message-Id:Date;
	bh=SOxI7dSr7dXtQ37K96/eEimkFzQgvAb2DjZsy1nmYRM=;
	b=ji03gFT1DvUCfPlhEhV7hi9uzAPhlV9i/OuCeBIpj6JfI8BVT2Du3oYXUIkCHiWY
	2iYm9uqsVntwdgAp8qxHrokZsZ3s1Dc5JCujjbPIZ7RGURY7SA/HTVpXWfpvzlHGfje
	xbYshtCMqN7Mrk5BxuaRcABFQbhFiArssNbd6v7w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646998584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SOxI7dSr7dXtQ37K96/eEimkFzQgvAb2DjZsy1nmYRM=;
	b=ccrHJtopUY909xlM2obOTu4plSV1bu2L4v1KYeYIjNsFuYrGSpZvMgdbvFuT+ChF
	Ubxf/JxhtbJX/BuFEyYCB/2I+j/iQTneUfeXslf67YulJRomvPOdC3TipW+cKrzNZ60
	jyDlUGOR5DHzd1cABQMF+L+9EQ+gwyD8Q7zlYJps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78c3fd79-026d2eb4-d25a-41f0-a4fc-5ae89ac7b03b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99e744b01372e3568b25248621522e217ceb82c15cbfa4ab4023de71129d9c67
Date: Fri, 11 Mar 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646998584
