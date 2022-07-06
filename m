Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39891320C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 12:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657111012;
	h=To:Subject:From:Message-Id:Date;
	bh=2B4Cppj+7Ywacv/pTWgfxeKMH74+q6IQdCDf9zCMe0s=;
	b=TeuzqwtLfEprkWbkGkZ5CFQAch2o1YEtCEw+NKHIaQ2os80vh58mEpaGWsP1Vfl7
	Ncqzy4ETlJkFgpw4IdPkBEwrawrPqm27X/qzYoqwbgUGiDtDG3B5tMWcvGlEh9v0Ran
	rsdoFD5oV0MjYft9scTkmkRMWRRiEEJgUFAjlJHs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657111012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2B4Cppj+7Ywacv/pTWgfxeKMH74+q6IQdCDf9zCMe0s=;
	b=h2NRexlZ44yjFzYP/D6OWvvDfH8kYq8OTkdVfcfpagLabB0fz89cAW2UNb1tgtYw
	1m1j4B3j625IpSUghXyqOPSZO0a9SMJUUdSqrrZ+ajrg7rZQP1QdfQ0k4Ke0rf/AIu8
	iJ8l1LU6uL3KYt29BNz1F1AkElpOdIq3BV4xse/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d38363bc-b6f952df-3f12-472f-8091-ff393f71ffd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a134a274ad49d3b240880b0e4b24adde8db805373b22cd4274e1251102137a38
Date: Wed, 6 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657111012
