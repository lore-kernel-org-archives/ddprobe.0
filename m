Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9BEEA8
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659760252;
	h=To:Subject:From:Message-Id:Date;
	bh=OfF5Rns75OfO4q2Rnc3f3iNqPvpLvwfb/z+saqiHjq8=;
	b=EpOSABXQQtpQK/JPxhWj17dnXvfPNiqfj7XWYm8fVh27g9mxpSKkuCf+rWkXIUKu
	4YDoFRW/qJd14zLv2MgVPbOwhW9zWUmPGYBaLO2qO3E0lSbAbHpXnjOtmnm5d1ppptu
	FW8CPcHAtdNex/zkYpxWP/qe7mUUsv4o5dx6Vi6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659760252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OfF5Rns75OfO4q2Rnc3f3iNqPvpLvwfb/z+saqiHjq8=;
	b=N3j+bQ9yw1M8ouzZTh10Q5qAvLuuSq3AYgwNvASFiNPBkLQEACChE9Hq/EwwNASW
	lHpmQWcxfrw5REtQM99Dz3RFvV4EGcbbHHhvl9tJckkuVwufrhQuLwygjePsjd3LTWz
	e8Ehy2amb8aeJCdEyCszQZGSegDDDG0ZqNi1m6LA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182716b969a-a54cb02a-4d3c-41df-af5a-ede50bec6871-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a800fcb29476e6241149473da803473f10417d7a9120fba3cc2ef466897dee1e
Date: Sat, 6 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659760252
