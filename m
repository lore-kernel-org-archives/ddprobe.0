Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A19717F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659577253;
	h=To:Subject:From:Message-Id:Date;
	bh=9osnFK7YTpPdmLWuXiiorH7bpGQGhlHoqkpP8rdcLO0=;
	b=YtnuUKMgNzhdoxIWz1tc5iLpQMOW4PGf7XWinVkN6XNhZH8hwIgKVCK1J/gcr8J7
	DYkrBQeYbmD5CU3kXpIOIgClrEyDgBpZZHBJAuXqX/PsUzaiWVjAHDfdLlNq93KepIj
	hlBOcIZtgW2PEqs0ZPL6bnxpFMj1WQWVuyrBGtd8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659577253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9osnFK7YTpPdmLWuXiiorH7bpGQGhlHoqkpP8rdcLO0=;
	b=B7TfQ4HRAJU2cWFANSBSGWzxea6JdiV/KLNrOkt8PBhSoQzJm4YyrIIXkqaov24M
	2p2EQzShv09VyiZKMgKkIywIRX/4Dq+UUBJFNFuBpCD3KvE7bdeLroHxTwNo3uBmEMf
	0XtGShF8pjNqPBpo8x3H0EvxzdXmZRCu99eZgIzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018266833b13-43508b4e-6235-4a6c-a4d5-ab1a2ef318a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 479a78b055bed3a2acf0d5d116729572090df2ec140d800e13b7e52b9aed8c67
Date: Thu, 4 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659577252
