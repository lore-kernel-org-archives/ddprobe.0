Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E224F15A0
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660003853;
	h=To:Subject:From:Message-Id:Date;
	bh=zvhp+ZpKZWfxwuMCn3pHmP4IfFxh8p+AGN9RmZFdCj0=;
	b=Cgh0C05BMJfPDQwsSThEU75DFZmDvXpZLwUH40SuUKMxo4+7g7G85UVTCOmSWnvs
	gAU7xzZiwE3bvgVq8rogRUAGKwjsk4eEpFAFhyO+yKGdfvvkJWrfrQlGOG1cdtRsi05
	F8iPy52cRWDfPt4bjawrd8og0lcoHvoq72sOJ3GM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660003853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zvhp+ZpKZWfxwuMCn3pHmP4IfFxh8p+AGN9RmZFdCj0=;
	b=kS1jDXp3wYjELzOpvkeD2R42cSI3ZlL1JDsose9VRV6r7gNP8EXSye6C+EwZxgZs
	BwCR+slwrsPBpmAuV1Zeqty4UluQcBbPJ7XSsjysMhD5pCxkcGJHquYofXhCqBotNX7
	1SJ7EDCRaiWg8q91Z2FBd6hXeCvWje/R3IV7q6BA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827ff0a0ea-8c08fa6e-28a7-4c78-abad-c1db8b9fb013-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b20cee15e68c9b66d30e04f351ba5800f4d5a90790432d7308fd7edebdb4f796
Date: Tue, 9 Aug 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660003852
