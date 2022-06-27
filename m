Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4A920F3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 06:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656311812;
	h=To:Subject:From:Message-Id:Date;
	bh=v8fr0C1doCLK33f6HT0lpNn4xNAJAMbR/IUFUGGGjoQ=;
	b=gVwswlr001gsgPwpHZacxh2PJbKFM425vUJa4fDZNWUBKXMVjyEeYciYCK+VBBHN
	jX/0OHVtERt51a/TXLYEeaxV5KD/i9DXYfyLzvBe7BduQb3v11Hdujv+djGcSK3aCNI
	FyRnUMH11AFE6AWQ38UgaO7eaWmKlwGr354U4J8E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656311812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v8fr0C1doCLK33f6HT0lpNn4xNAJAMbR/IUFUGGGjoQ=;
	b=abcEXXypFGTxVQjqdl0Ld1SLhUJPrrIU42pIbfr+vtmXLr+/tCRXTPAU3E7NLVg7
	mX/CIwOI/GzvUWifCz9etKkNRLMqnHBBe4+S41P+kSyu+MfecFx4Yvq8g2M+LhuNWDq
	RsW2YaCXwQYGQl5GMoz9BgibWDmiMgc3yh6RGyz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3e090c6-85a529b3-0beb-45e5-b7f2-390af9217b43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6ec008865cbb915baaab827e7c0a9bb7bfb7095f04b1a4cca51d94001aff745
Date: Mon, 27 Jun 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656311812
