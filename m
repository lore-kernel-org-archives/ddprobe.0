Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 795EA2F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647201984;
	h=To:Subject:From:Message-Id:Date;
	bh=DmJ1iRiQE6cTUwgIW6XofHyrijDOtHVn5uE78yM/4Ak=;
	b=FjZ1iIQrz40sfFDtYIrOoq0A18CQcSXkqDuqfzX27M/I+Tq7zmvjipvtePDgh22Y
	p5Y1vRTokhcFs2alH0ZNqUb/qBmK7F0X5Yr/G9+x24JS0g4RSsifLmDf0Bpv5wTTKk6
	PFQXuL/8YSNbubCeS4o0BAks3mrNU/Gb0s/8GGXE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647201984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DmJ1iRiQE6cTUwgIW6XofHyrijDOtHVn5uE78yM/4Ak=;
	b=SvYJ68l40tijROaxs0ZVH92a41Et561eoqHZjzjLwHLxzYou+IcPw3S6VTBqvUAr
	HKoj5Y1+9D6kkeagWqp94BfVolVEPwlJq/GMUKn2fTC4Qs42hYC6FvojX+47TLJ4WyR
	WKhQAtqioL0QIOl18mr7EeFKMaDzQp6FX1RZZ2Uo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84e3a0ea-848749ad-1ad0-4ad0-affa-ddd5ff84b88b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39ae9463b5458ea978c2939eae94db170470c1c734a4a74316e39376ab0cab03
Date: Sun, 13 Mar 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647201984
