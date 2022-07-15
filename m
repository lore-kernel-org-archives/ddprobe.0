Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138F17A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 03:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657856212;
	h=To:Subject:From:Message-Id:Date;
	bh=WgYWeG7remlFNj83cUddBp5h2GOBez9H3ZZA3GB6o4g=;
	b=W8OGLWF7NGn/iRC4hQTdX9cBHuGR1VC8qn0Nuc2UVGAPd/x3Y0OBTesxqG/rWlZP
	jny7tPpak8mLyAvmyu23UNIVyWgdWpdTNP5hQ7xUgNPowD8AG8NjbWQaDLUJ3pYjLhJ
	EGv6tr+4ej1CdAqvhyFnvp+6EghNTUeegXSMpTYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657856212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WgYWeG7remlFNj83cUddBp5h2GOBez9H3ZZA3GB6o4g=;
	b=a/SkEyiRWdgxaKfgtio5jA3QzY3nYTPIujJcM06qpIRo54DiffbNBlbna+Vd2TmE
	Nq8fgOnu47sqMfk29Ne6Uf2l53l+mMHN2xZhij1LUNdGEKMrznanDfv+N5kqZQlPffC
	i1VjBzGWXNJnCaBb9nSiYENwtDHD3friOJyPRGyk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ffee3d4d-82cbe3bc-19d4-4baf-a45d-21198747cc18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05053059eb0b00a8e7cc8d7b55b54dea6d2c7ec904da6c30dcd18a2632c30aac
Date: Fri, 15 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657856212
