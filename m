Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED882180
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647757885;
	h=To:Subject:From:Message-Id:Date;
	bh=mUPKU8atEtx/ZKvL/tpwJzTqTruY9qc7J61LIHsL+TU=;
	b=hkUpGdwJU6yyJ7TWYhbnRUNlCNmAxvRxlD0p2lPzGkBO7Y3CM9c5BYL0yuohG9Ar
	tlMWxt/lMzRjoVyvqDorJjAvpaTJlBbKk7wK6C/iSb351VZZFGlzKXqjgQlELoQxykQ
	LyTC7IU5llMUMRQi3d+JS7hRi9OlbpCVVxjpcJZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647757885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mUPKU8atEtx/ZKvL/tpwJzTqTruY9qc7J61LIHsL+TU=;
	b=bYjsDRJiW6xTbuHhpuFlBGD6a1R6eW8FV2syob+mKPkyvhgEiPsBH1EFiIbub98Y
	+Wb3AD6VGJiRqwSOfeQI/Ga6XqBwXsc86HarE1WiwqlTtCQurGq1Cbi55v3ugZTppZ1
	pGURpgbZB/m3Hz/1MK/Br6DP8pECHOrj4uCJYUek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa605fd6f-45beadcc-fb14-47a0-a647-0bfc08135a73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d87932138f30b734cfb45ec71a82e147bd9c448f2ef91498ba50fc60aa8eecc4
Date: Sun, 20 Mar 2022 06:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647757884
