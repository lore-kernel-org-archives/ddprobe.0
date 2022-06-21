Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6997483
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 18:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655837579;
	h=To:Subject:From:Message-Id:Date;
	bh=Xf1eDu6oJkDh22/Gjzc+5tHGnh47ApAh2auBQRMOD84=;
	b=SJHKUibu5fbRZrdooNOBMr7qgJGItHru8IG8TgkD+VzbJV4qRSJQZAtVBEhd+uSb
	38RIrFAGL4ia9jyxHoOOWoJXkRGffkhCR7D4TkXupx9QBLGrmQbEV0/KYq7A/MRa2Hw
	BkCnKJGYRGVkDvxzlhlnalD5+Egnw50/AH635gJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655837579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xf1eDu6oJkDh22/Gjzc+5tHGnh47ApAh2auBQRMOD84=;
	b=GvBglFLVW3BfpwnxYjxtyKJQiAMQS9mNKikEnpC5fdiwUFq/wNw36Ckv8BipfduQ
	ypdpRtSMETKYnYr/ZVgtJ8SWOlcIuvK64hh3e5Qpsqx/2NuNYZ3u1nGC3vsjZmfpx2+
	lY3anLsyjmfT2vPeojY6cQYdfCkvM5KPCjxOipyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181879c57f4-1b36ab32-911c-4c0a-9899-8f57b4243301-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d49a0d1f0b3f0e7033839c901654bac971508702569cb034567522d209752c0
Date: Tue, 21 Jun 2022 18:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655837579
