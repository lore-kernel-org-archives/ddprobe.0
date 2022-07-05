Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1470217CA
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 03:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656991612;
	h=To:Subject:From:Message-Id:Date;
	bh=96I+aavfSNtC9D51+IuhKtv29H37pVgk5avltdQFtdQ=;
	b=O/0HaSDfaFNnZ3ienzat6evj77Lt3fZXkQaYr3GrleCCS3hsHqcvMO8Yx4kEr0Fs
	ZhiHQiJwWDfAu8sv/c/Ytdi3oJ0Ji5KIPqfbdZuIRsZX4lB2Jr553UEi63oimsny/RU
	/iGXx1Ruu5PUNP+DdOiblsKgrr6tK1eaDxof/voY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656991612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=96I+aavfSNtC9D51+IuhKtv29H37pVgk5avltdQFtdQ=;
	b=jmZuqmQCeR1qlgHxfnhwddPAmiiB2bsk3iRpXHsrbd01eCGX/hWjGOq4du/nLE2c
	fTwJ48iRHbU0weObP+8WS2309JLLZfQoJ63hJ3lRHqs1Da7HJ7Vd9q27NgrEGwK+/NL
	DOi5aV5z2K/LHhUxrzIVUdNDisEWq0vYEVYl07Hk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cc657d72-bf9488f3-e296-4b08-8902-fc268df4a611-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec893d3596eb2f7fb4a5b1efedfd634d78a76bfc5a4b7cfc97e13f5c598abc23
Date: Tue, 5 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656991612
