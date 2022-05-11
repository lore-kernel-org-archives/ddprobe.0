Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C083FE0
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 00:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652313599;
	h=To:Subject:From:Message-Id:Date;
	bh=efVumIjI2iA0VJ2yYFJ8OdcpRdbKbqOyn6cSW9iLIFw=;
	b=UgLpYmjfaqUB42KyeMS0tMG5xYETib1l/XcjdWZOMHsie0r9ikMbXPNpWicBVV/A
	Ffg6jmDpMwT7JeE5l7etlGtj0IwZ9aeycu3mKPAvjqjxyOr6/L4VlU8bxRSgtvalN9q
	2ddTXsre/VLSh9luaiybdygY63LgU0J1iFe9NqDM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652313599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=efVumIjI2iA0VJ2yYFJ8OdcpRdbKbqOyn6cSW9iLIFw=;
	b=PoDV2mF2v9Rr6FIt5UCiFQf7mkmKyydIdAPv78lM5dWV3EasH5cuZPsw4MP2SjVh
	uy6QaCssCqEsOb1IlZn0RLoMzRM4Mco3PM8NABF24LpRCGRcLzaYABZU0sA+Fdq/nIT
	0VPajdgE0wQOjLThpDVeb/W6x9+6Uxt+HW3MqKPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b590ad82-68b99260-f851-48d1-88ee-0a1e9bde4779-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71d7cce81fd2f6ffcdc47d5104531caf1155ba43387475436a5bce7b8eaf26ad
Date: Wed, 11 May 2022 23:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652313599
