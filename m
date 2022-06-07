Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165F84C65
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 23:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654645379;
	h=To:Subject:From:Message-Id:Date;
	bh=v3Z8aM/kwkosSULx5epRa/m+KFDiHpXJABXzetmUr2Q=;
	b=WESqmqpKQo78TpMf6X9y5uzEg9KuhMwFF23y9/MP6u6bR0fxzz92lNmo1E4gKuEp
	S5J2iS5QPEyUlcPNB7uEhu2KjkDtU6N2pi6gzN7AIpFS0KY9fUS2QqPmuQzSF1ZAZTg
	6OXmB5S9hSZe8SDsVdj+KntpIgmP8b381TCEtAk4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654645379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v3Z8aM/kwkosSULx5epRa/m+KFDiHpXJABXzetmUr2Q=;
	b=BKeuZeasvkdcmXa4xZO5Z65Eoi0rTjR8GU3p7tsiws3zWTM3Dw9pZRRAJTSs1UDd
	UI4s5ROa7Xdi7c1kVjU3QWhlajWqZd4fFOvluxR7gbJD0IqDZ2Lfx9isNdHNCYuncw2
	s2MzHZJcq+FkbmmdJ0GCwbZcLe/S8d1Xty4EXfl8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181408cd095-99305e62-6ffd-44b2-8776-5aff966a3051-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 122d05336e5e5e3cbd1b0703aa5361b2b3bec8aa9cbe2b7650c5e3b9fa85f2f5
Date: Tue, 7 Jun 2022 23:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654645379
