Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92DDB2F32
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645315284;
	h=To:Subject:From:Message-Id:Date;
	bh=vFEzva+ytJ/EfV1KHPWr9dd3MiPd5wt+3pV4O6zI/20=;
	b=ceNt80FhhFJXSVs7V7JairQ4W0nKI8eL0IdWoomiCS4tx0vNsGTVcfWqUuT0625T
	NGPuMnYLewD2C+UNaWb24d7t9ckeKLmz4iwnJdElQfzG3T75vJ5Db0CjxVVzRob9dBz
	nnfcbPz/yqsXX6GibQXTA40B+Vzh50b8df63R/f8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645315284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vFEzva+ytJ/EfV1KHPWr9dd3MiPd5wt+3pV4O6zI/20=;
	b=lvvTLqqEQeQnMIIUyR5Zex9t5IZklTT/qPFuksULFXUKPgg6jtiRY3rq2EsgGC9e
	MlQth2RZdkZgqUa/Yv4XCGkTZ3bcLU4uQCNx2WLUX3I7FhQ07iTdjNiPr90VkikwBvE
	kdqiyFDY3b3Yi0jyabZrrWVSPr8ydFAThHYKwhDU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f146edf52-a4f0e9ac-ae64-4a05-a1c5-7e494696a07a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 110da6e198d4bd2707c29a3c428662c1ad3d75460439ff0d2a6982f133f2e033
Date: Sun, 20 Feb 2022 00:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645315284
