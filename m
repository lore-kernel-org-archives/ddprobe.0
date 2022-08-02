Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74ACA7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659453052;
	h=To:Subject:From:Message-Id:Date;
	bh=plmfHOZcgHRm6cVN0A25OI6fl3FKoba+88BlGism9gQ=;
	b=S4bzxgPTvYxAhS9BRnOcGmr6r+Tcju6keDyb7IcwjPBmZt1jBwsG4ZAxwhiHmlth
	zHt/dtj50kgmYU/JCseuk8PbpwsGX3EgSmJt/MuBFZ41G58N++O1WRzNb9C4/DigRpw
	ZroKd1tzcrWz/FhmqgwRYcMJB41NJW8TJyZAcZJY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659453052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=plmfHOZcgHRm6cVN0A25OI6fl3FKoba+88BlGism9gQ=;
	b=UjVxMWKrc+kspxGYC0iQc4nFB4E8lrMLU7ZYcItaISuC45SSvBe59/UGhV3mjj1k
	8CPv7QXyshBWQWNSUrB3hbdVmWWD415kD2RszJwvIiyZ0ZziJr0pJBoQqi9V7ChXDOt
	jQO4NQm0E0HxhGGbHQ14moAfG0Hz9gca+4nHgMUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825f1c168c-7abcdb68-6fe5-483d-aca3-75f6aa899302-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70aa6e1369db9bd65d8a778509ca128139cb0f401551015a77e85a62ebaea16f
Date: Tue, 2 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659453052
