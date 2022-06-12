Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DB651369
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 19:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655063700;
	h=To:Subject:From:Message-Id:Date;
	bh=FgpZRshGAqRC6uM7kpQ+jRpOQ04p7sXjbvCgxUL4Blk=;
	b=Zxz18zssGqaOR3NS4JAYlq7IXIZBI4fth3PrEA3fxlVqv/QWoAYBpkx+bKThoY5A
	HufUJj5KeonVuSY3rN0FMkG7JTWt3dTEOG+E31XhyasCuOzFI/r3fppwx5A8oMkqAOM
	xeNmBMUUPHhbt7uPZ1n4MAjPbusjxZaiKSWlQZ6w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655063700;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FgpZRshGAqRC6uM7kpQ+jRpOQ04p7sXjbvCgxUL4Blk=;
	b=hFCw9O2xcvbADUDuS9IDLl29VAyv2KjWr9Nr6dqqL3/bRrmL63b809Rst5pmcVyI
	scGgqXYbZw4RijKDL3tjUOSlvqzptXEAHoraGol91I5hiCjYUzlOKIkFBJ9P+UTR9Dd
	aD5Z3wn+3On/Vt3BFxf+FnLLDoujqZ75tu5MtiRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181597bdf44-f1f5d21c-16f9-4487-8b65-57d9744c9e91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a10a7d720159c60abed922d57157a2accc35e376367117c55ec695e2f9ba68d
Date: Sun, 12 Jun 2022 19:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655063699
