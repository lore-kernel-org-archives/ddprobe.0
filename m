Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18950186D
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658233612;
	h=To:Subject:From:Message-Id:Date;
	bh=3sBQr0s70590q/S5Aa51o99419Tk4Plu9ONgVLa2pn4=;
	b=Yv24JPZ9aRm5AuYzn39jpwRW8wF4iDIH5/gIM8ETMCrcR/ACYdApnSzhhofB82HW
	OgN9qadqtbeHXMkNM/v6tnPfDBKoFBHMM8gpEYwkIdpDa7P8j8h28R3vCQx9yepLUwc
	vss3BmaxA7E65pmuy0f4zhjgM/MtvcNjlbEoAjTQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658233612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3sBQr0s70590q/S5Aa51o99419Tk4Plu9ONgVLa2pn4=;
	b=T2Qf2JHXAAGBW31CMPbn26maRNDAbpjJE7G3OlfzKZE3MYImSkwiJvG+FLA0hB2S
	Daeh5rUjjEXV10aAHk1hJ3iSCmmL4I1aGwq+SdtZy3bsWrEGZkzdSHZU1Ci+qOwY0Ji
	+odOWtjbFXaM4sSCnVE4HCdJo1nu175JHVqOT2Kw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182166ce829-09b5cb7a-0bc3-40da-8ed7-6e5b3220a3a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44f2bbb985b24ffceeff93e70c110b69acb89af42679ba8dc761137b3e5b8aeb
Date: Tue, 19 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658233612
