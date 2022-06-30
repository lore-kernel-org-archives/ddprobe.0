Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2072AA46
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 08:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656578212;
	h=To:Subject:From:Message-Id:Date;
	bh=ukCX2bOT88uxrmKoqJaIGKIbZfcIiuCa78lPg0Fuxlk=;
	b=cqo+TI37HyAYTpXuQ0THVooI5GfwXuV85RCjPT46UZfFNUeArmFj79eqGKTEC5fe
	9S6yiT93RohcSayEe+v5BxbT0+huWHdUYQJDLjTCGb+4HS8h8cjH3Qc23H4XNYwIQpV
	FVPgLX4QOziFeB86SQYYETnZf6hhfEzx5Cwjzhdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656578212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ukCX2bOT88uxrmKoqJaIGKIbZfcIiuCa78lPg0Fuxlk=;
	b=axagwRTr9CP51mzhzDm6xg6FTHzHhsdPhpqIqxINS6G4R99XwBUa92PecbICj0xW
	InzsbY07gamIENR2JKmueOacbn+jkeeGG6g/QQSqe+LxvaqobnIUuBXbXjvMy4iivCu
	uLQFvNC9VTLh5n2F8xg8fnNKjm+YnYlmsCxAXvTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3c181d0-265143c4-767c-4ce8-bcdd-d4494f6dc6d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c2f1021ff28033bd029a3cfcb5e913788911e85a4a5e21352a3093d692d44e2
Date: Thu, 30 Jun 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656578212
