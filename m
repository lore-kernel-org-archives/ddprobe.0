Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A23257E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 20:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656015412;
	h=To:Subject:From:Message-Id:Date;
	bh=Zw4pXSkn0G1Bk16pEbxcvduRZKqGxsqjdXaRDH6zShg=;
	b=YUSR7cPeBpxm6gWM31/Mu7ibEhQyrE/dKHLizX2y/bFzKjXRbVj6WYAS553A2oZV
	YkMl41bG5enmly7TtSQGxyH7HFyECBVYi/TE5j7HMLILuMR7xe/MDNNOERV6Nw1gPGO
	FSJ8jPeFAbF/JlwrF5HbW7QV2G+p7n0R2uaaKRmk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656015412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zw4pXSkn0G1Bk16pEbxcvduRZKqGxsqjdXaRDH6zShg=;
	b=PM0uSTkyvr2bAvBgGRo3CBtWki5wBeiBFka87uQDE9AdzGheUEdZaF8LpqMsHC0J
	kTAQfzhF9Us8Vlygq4UkKFn9lQXzqgpczkBfBrlwq5I4nhy65fV8qbvfby7Yk6nVouT
	JzIxkou32eqZUsRKqIxDFQgBN2mavVduoPBKzdag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819235dc4b-1b6b3d17-bf47-4de1-9879-5597e213a81b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c6a0c1508ad747c08042f45639edb65816465e852713c0334f0a64dfdf9f96c
Date: Thu, 23 Jun 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656015412
