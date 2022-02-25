Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B6A10EF
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645755385;
	h=To:Subject:From:Message-Id:Date;
	bh=YTP9wIGMqzvBLmw/tLiMlH31NXTG3k1Ev5H8DIgJU0E=;
	b=RhpW6tYp5qmk4s2uHMPD+Dmf5QzM37PoJAKr8IKsGw75YWYF9tIeyDPOFYhMtarM
	cLpCuSq0B7JK5/JIgMhuif6+FPGhEuFDW9K1gJMmJ/rJMhxxvtq8PKAqZp/yKnq8Pkn
	NcXIL64NGNBGg+AR01wYmQA7D9M1SbJ/1wvRwxEg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645755385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YTP9wIGMqzvBLmw/tLiMlH31NXTG3k1Ev5H8DIgJU0E=;
	b=A/eOFu0BiMpPhVq1Q/LCctHEMFPWrqqjuy/EHoQTrdyI6Hi0hYuJMuw9VwDq1Kkr
	RXtMU1qieUPC3W54bjiP+16Dro80fuvkCu/MTtrzKjjUojRLXr1+kQZvz01b0/Y9WcS
	bxjgLJ+vRqkXkvGJOJ+w/mRzhfrtvdtTf3k7newE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2eaa43d5-84fce1cc-c59c-4826-84b6-46be3d9d49ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19a47ecb61bdd6237b36af511c694e817a294fd3ad794e6de4015d67a7a6c3f5
Date: Fri, 25 Feb 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645755384
