Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4DE2F42
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 22:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652220479;
	h=To:Subject:From:Message-Id:Date;
	bh=ZBdMPsh3MfgX9mN0JV6qdo/gMgcXxG/W6igCi7adll0=;
	b=ZioiaANatxgzDZVRinG7f8wMzzdlPYZWL/EYJPkP3d5xWE3ZcEJvrukhC8EFc0bV
	DSUsD0tg9o/IughDfGtDUZwclkZpeWRd9Guxtp/NcmKCsWemamUKk6nSrPOWzmdBq9M
	dg0WK3q6mn5nIQLatFsDsnaqzEgz5bcg/7SYT1Fc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652220479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZBdMPsh3MfgX9mN0JV6qdo/gMgcXxG/W6igCi7adll0=;
	b=LNgWeemaPBR7icKofVF+InZXjlSwPb788QQCuj0YItNxJypCSPgx4Pr7Ovcyhnwo
	f85WM/4/mCM+1NIJLsvP/zK7J3JMoofSRhvKKzYhbJ7C7b1XN7zR8RYeccgRQLkm3zK
	V1tJVpK5brnbbfy42ijX2v6aFcVA44DVGMz0/kaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b003c7a3-18b5925a-0a56-47cb-9fbc-6df2c6f8eead-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bee98e49069f375f411b011f310ecdff63d57ab7c368e1aca9c728dcbeca86c9
Date: Tue, 10 May 2022 22:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652220479
