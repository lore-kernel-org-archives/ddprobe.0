Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB536624
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 01:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658800012;
	h=To:Subject:From:Message-Id:Date;
	bh=ULCqYaNArrA08/xVxoaAoabW9dfJ2Lemr7J09iYXkro=;
	b=ZOqph1hDNY+oJjp/Hdz1bryrgPBQZh9XHOc43Htsc5E+BjV6aS5LPfiaqu/1nC7K
	SVDoMsGfOy74gNjoROAWCbgS4FxIfUe4eyCx7E9k0TszMIGE9Gmx9MsU2L7YPDMiwWU
	Uj8+MZg1b0MAbjEO54gxykpUujU51EJcZp6FjECg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658800012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ULCqYaNArrA08/xVxoaAoabW9dfJ2Lemr7J09iYXkro=;
	b=Ndb0h0TBGhelSGreDgqs7lr64bxtsGDhqYsDTRGStJAGv5Y6qoIZwn26BOZsACmp
	XFukf6+/DPlpEH9STNRbzVQC7LIu8at0DbJZCesTnZ7DzbwJ+q0miOTG2S0D9hpBNIz
	1vcyBw/vc9Kxpi9voQ89dwF73mhqQYPwDTG1kqHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182382f7bd8-d8ec25e5-53ab-403f-b353-ac880e9d6056-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 621aeed413da022755812d41e44a9b142ae336f7eb1d3a3396ea81f812722bd7
Date: Tue, 26 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658800012
