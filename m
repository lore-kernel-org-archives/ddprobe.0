Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7C9624
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 18:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654108319;
	h=To:Subject:From:Message-Id:Date;
	bh=XMUopTneeJjewjNGUgEKQGTzd2sP6Uy9GR23SxULXXc=;
	b=Xf7E9WqwuMGJdwfhp76UCqinb1Pgw4xID8aiSKkAuUsFWE2Weeul60BgI1lHveN9
	XawqtjhmXNZSaAu5bPXym1awwV7TgWqFe7ec/gQi53a2nuUA95l2Ik6Q2goMPtcPhFs
	NG/l2xoOQxS9an3iaZ0VRVpSzgnwxa2qK+CSgltI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654108319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XMUopTneeJjewjNGUgEKQGTzd2sP6Uy9GR23SxULXXc=;
	b=TnCkiqQ6IJ3eh8fwDQXPYqVjJXalF0IBfcbtpzBNP/S/T4z3mdcj2pPV9zyHff6n
	WAex1ies75154MNSAnFB5rAs2WLrSTe352v7g14te1reob1r/jxPKN0BvKwKdBTXWkC
	dw2wbZLaBRXMj04Jqzy6hqR8oJfrB8G6RhOEsTFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812089ee21-19c98349-d15a-4247-89f0-0198ff31a2fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc9065bf5240317dcfd4b06c619b3d7c33aba65e18956814a2a60587118783f6
Date: Wed, 1 Jun 2022 18:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654108319
