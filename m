Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704821853
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 10:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651316098;
	h=To:Subject:From:Message-Id:Date;
	bh=Wma149ZyHabr9UzqS8FwdIk9OUb+MdyipeDkGoA3EsU=;
	b=UegYbAzglN4xmjOISjU+JZPd2IWP/adSx0UW3xtz1RN7gprKVB+pxBCP7IB4U6Yy
	VfpdIx/6c7SQ3TNQ5IeC1VkqVEpm6xQfxsVO9l327K++IfSx/bhQ1z8TugahY0g3+8B
	M1vRBAFKN5rF2Knk/adztRQw1vbSXYPrvPwMDo9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651316098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wma149ZyHabr9UzqS8FwdIk9OUb+MdyipeDkGoA3EsU=;
	b=CWH5RnyRNb/cN4Q5Ja+7ITn54jpBy+EAWpClYpfw8qeC5+g7vuoTdAj5NfBNcteu
	OKyul3jEcoQvdvFqSeCDDap4wUMAlDfufVZjguxiNpHWK/BJkSJCkGJhwPyoEGMRFZC
	D+UL8R7tSXq+SSgvH5aZpVDltGr5AiJHxC+eXSdY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807a1c04ed-60c60a28-acbe-47d4-ba2a-47fe0a1ccce0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1e50652bae263933e2cf837efcb4dbaff1dc08179adcf3aa6bbad97e5fa650a
Date: Sat, 30 Apr 2022 10:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651316098
