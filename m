Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F171852
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 05:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652850839;
	h=To:Subject:From:Message-Id:Date;
	bh=6h4yrgPMBguYIwqpdCj6rKCAB5naEnwoAZ5qOWLcCVg=;
	b=HXV+qRfOH3MWMd4IK5qSgtlI8AAxsR39PGqiwJStJwt4UMoRJtVaWqFMvphxcpw2
	ufGFj7dRYyV4diPgNN6X5IycUU771ZhyxzNMsQEfLE9CL1LRhbNjey0qZiDMFJ0VQoP
	JHuJ71tARhGJXs8pcnXDjp1Pujl7SpAemqbfoA1c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652850839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6h4yrgPMBguYIwqpdCj6rKCAB5naEnwoAZ5qOWLcCVg=;
	b=OTDBtM5bHEKTwqx3aotcSyHmeTif0cxZ07ZSgnryhSXSHkRmO18ll90GSO8YiVGE
	LK9FzBxcWjrPtawCDyF5PCyUqi9YzvQegeFL1ih40c+FUoPz7JoYDLBtnqbu55qMdi9
	4RSi4TeFpkJrEoKbQSHUskbjnmUpY48eS5r2IF9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d5964eee-d2f098ce-a9cd-4482-92ef-7e93687abbfa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f72cfafd2befc31ca9991bc520668e9865ba32238086176b68c30166c558201
Date: Wed, 18 May 2022 05:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652850839
