Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720887EE
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660443052;
	h=To:Subject:From:Message-Id:Date;
	bh=yZcB6BKNAWlOCO7325iBfzwGV+MeYhpMO058QJ5VgQU=;
	b=A4zmjxvycveY/QNmwn1tj8k5La8cemO0MH8o66BebCRKjeuoPoCUE/PZP2QV1zpd
	89y7hldoR+2ctbj3xD9vSP/gCBPCgc/8ywms+Rs2m2u7ibKlriQYEkeQpfELAdYhoB/
	Mt8lcG8fu9Ro1LN+/Rg9SllIHYguei2WOmcR88Kk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660443052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yZcB6BKNAWlOCO7325iBfzwGV+MeYhpMO058QJ5VgQU=;
	b=I6bMySiJM+SAAz9LlJNyMHD8kDdCHQgNP2kTgCIDGcH+TcL/3vaUrHrz2k/8aRV3
	IESaRpBNZondbfS4C8wBbTvauT1WxbqIdLNQyCSfvfSM5tk/g7XShABMQFXIi785RAk
	lhukH8tnfSmZYtOq383hEtuC7/nhkvMHKPRLoU70=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829a1e4a13-ba6317b9-3667-4888-8669-75336bcbae68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7968c404c251a26a2dcf904458a880928356080ab1c24c086c270b0d453212f
Date: Sun, 14 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660443052
