Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A6D7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646997985;
	h=To:Subject:From:Message-Id:Date;
	bh=yGZdtLHOuDmcneqD8mYkHf9kCyDlxsT0J9ps1itDGJM=;
	b=JxH0SAPVmgHGk7XjuhdzXB4S4Q5xFk8fMjx+t9xNv3XQfPcMPTRdKsqkgAuJ5f2S
	s+7adRedYDUQKY7ijR84zDU06dxKVAhGp9sPwumDPfSrnjTkuQyJ9D8H9edlM2DfHq/
	bAryGmIbLKJsCLkBqsljy71vdeQspKUgN274gQks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646997985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yGZdtLHOuDmcneqD8mYkHf9kCyDlxsT0J9ps1itDGJM=;
	b=Y9VjeAooOgDqLhynAl2ViiS683GQrLff2TThipEEebYbjFrWY14McGRaiAhfQ0MW
	EB/8cXTgZ9UjEq/zbqMWfPprdRWzwcbcBRk8WRvcJwUGcYhcN6DvsP/8QDDonzJym4H
	YG5eFEWr1jGEyDbfIfh/EntpiHh0J/tC6fQNEBQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78bad600-1e6edeaf-5ef4-43b6-b3e0-68a9c4f2da03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68e305194a9b3272a3acc645a15675776784832e3925f2af128fc0fce7955fbc
Date: Fri, 11 Mar 2022 11:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646997984
