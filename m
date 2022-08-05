Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 820457FF
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659663652;
	h=To:Subject:From:Message-Id:Date;
	bh=a2SlmcANP+x/ytVY3fbJrtV5K9nKs9XT9lIjV9+VPcg=;
	b=DV+zzLaOwoIgWxoU5LUB4z8mDNQNtqvrHw9L4/KopG7youBgKoJhrtYedl3Uo4rP
	YobbGFN9BrPRL3Kh1LluN55JsjJuM3C87lcRpqPZCrrYlktVVLjFdI2hURpBPdoB8MG
	Uv+ZXnx/uQamgHirGkcdXPsH+IUfCb91milqfCMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659663652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a2SlmcANP+x/ytVY3fbJrtV5K9nKs9XT9lIjV9+VPcg=;
	b=Yd4OoNFb49zq9m7Js8gENdCQCVUl5UgZRH98yJmUbBT2d1L30Sn750UhR5OV/gCl
	1b/EyQ7rBvgTpvaCxWekuFj85wwsCOG/S2ZriGO4xJv9QwhcduBlLoSaWpe9mpfQ1Sa
	NLVI2OwUOTxI9h7Esgi0qkkSjzam6K0KkUgomfQ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826ba996cd-586b61b7-e903-4afa-a498-3a04c9c47235-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce717923b7a1896b6a9faf47dd5c0623a0885bcf373df903d20a4dc5ca2f4bf8
Date: Fri, 5 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659663652
