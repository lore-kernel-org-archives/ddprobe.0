Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512227E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 02:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658630812;
	h=To:Subject:From:Message-Id:Date;
	bh=LpEYvxiBqPvsTqHGdBH7rY/D2dp5DPfkSLCFEEppUN8=;
	b=JylUP7PwlDDOsOk7IVzt5IfbaWKU3e4rw79jwIT1Ry2A9l8Ov/eucqKnlc6IDtde
	FuUzPe7g4ZuTxKIiG76mLB9GfPjPnJzRR7EClM0vwe6xtCG73HzDBtYzvGA9cJ+A8fl
	EoFOwfHHrxn5uV+2afVwSkmqjde9wz0UBCu2Jnyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658630812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LpEYvxiBqPvsTqHGdBH7rY/D2dp5DPfkSLCFEEppUN8=;
	b=T5BlAzDtESsR6kt1bEbba3/xMo+dwxjWuF5srINbdHfoog2kGxHjI9WKsJFFlx7Q
	AZOu9JTnzpmGrWdHhmWnb98sEkw9K0ylsIiIOJZ4NMWa+/nxDVIV2zPFonJwZh+BoGD
	y7lO5IsHPT6pVN2zoVbALMVW98aaioOjmZrzqhS8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822e19b34c-d9ec386a-49a8-417d-9403-25e61c964178-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 861b2b3539344b8429f43f655584aae58268fa0d90a2cb5816964f7e74f84858
Date: Sun, 24 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658630812
