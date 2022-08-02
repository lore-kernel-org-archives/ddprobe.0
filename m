Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DF37F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659427852;
	h=To:Subject:From:Message-Id:Date;
	bh=OHUbxAZHxrllUyk1DvrjKpZWg/8zKQlOBvaD2NPwUIM=;
	b=RE1bm8JAitmLe9R+p0ECPI1I4d1cFuLanmnYnd26LMFNaNu35lnEn2YqA2oTn7qH
	8F7pfyXgPbwVqYI21Ijysaup7whLuOP5CIOwXcUOWqhrdwcUtmdbkPMEjOMow//c3+k
	CEALXRxf3iBrN1K3WFZLum6ILp3pQbG1AkDDnJZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659427852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OHUbxAZHxrllUyk1DvrjKpZWg/8zKQlOBvaD2NPwUIM=;
	b=X9r3iCQ8bkPvFt55nvY5J/S+9dJcYlY9la1fz4ePUXO4FG0zlHp22nUfVmtLxmCf
	Wo8KTYM1QnzWNlOmWVDMlo6IV8IUGIwuMtQGwgdz1AA/7++nDF+BsBmJlRkbFXSOlhB
	8mCLTIolIh5hZ+hEtueKK1s1crsrs0CpAxDWTidY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825d9b9120-4ac0a044-6521-48ba-bfca-1dba0fc2f7ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a57a6a2518bb027312cd4fde3255a4eaedcc88c915e8e6cd1d62ef510f7b067c
Date: Tue, 2 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659427852
