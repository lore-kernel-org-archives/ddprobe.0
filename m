Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410DD10E6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661311252;
	h=To:Subject:From:Message-Id:Date;
	bh=5IPrbQdx5n6DIz3wAwC77KdzXMopuWLaiTstYV2iMUw=;
	b=E3GtdIebFv4gB68B8MnZtc4sBwhY59275F2u/ANyNSQsIfPKqqLXGkfIX8+sf4Dp
	+o4lfsQ2EE+FmF3bSS8cb/rEkD8XRi5i5Xty05TUoslftbnPHSWxj9dQfkFIKyZhsSR
	9a80uaHTXhIaP3fFK16/T4XxMi64AKRMCZ+CBbBg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661311252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5IPrbQdx5n6DIz3wAwC77KdzXMopuWLaiTstYV2iMUw=;
	b=UxMAS60TRC2m4x97Ku2HPV7x9WTEmR24PeOZxBE+CliyeVAZ6GxUrOodB2s+FbR2
	wkAycPvt4wVgxV0Ol5RFKo9B+gN6n0wbWysxlO3BbNmZJLRulzY2m3gasoEHKoLUHo/
	aRqGXpFaaa+vCwXWTMRS0gd3aVSTQRdhdmP+4zfs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cdddf852-c9fcc9a1-1c36-4f7b-96a8-5896ab2a7b45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 230b9115262630fd90b53dbd466a7871fe593567c125b31094b1d18faf8b9164
Date: Wed, 24 Aug 2022 03:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661311252
