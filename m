Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B733205
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 23:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649893678;
	h=To:Subject:From:Message-Id:Date;
	bh=SyDefiEA+vOgFKcvVSBxqXbDHjnydn3T3fv+NSEKxXk=;
	b=SQZ7ro/c1Bnfenlo4GynPdGo5MeIHi9V2MRR1tixHHk4iLAKkv9KwY4yEOReg7VT
	4I98tZNDFQ2BXayYDo6MylsBni822ObE3gW7raTZKv+2eoEA+nfNUEJRPMKxy0ZPrNd
	SsJ1jGAN5PqWARgrKBQpEMA/lU99bgYQA+LVWrto=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649893678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SyDefiEA+vOgFKcvVSBxqXbDHjnydn3T3fv+NSEKxXk=;
	b=W93oPt6RPEccMJKS/X8TDlvS7uflwmp+jniz4m8kIgLI3OypkYiwMQzp9s16LdXV
	7xU1E2jL6iTLP3xBZcwY2HPeT4jR6sxuDl0+Ff/KbPGTYq87hCUV2crif3px0bxrsTu
	CK3wJnHX1L88SFyLH72ke8Fy4O7oYUyIDR9A15n8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018025539cfd-e66d616f-b772-49bb-b7c9-4a1477c9a183-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03938c89c70aaeeffab201b7fee29eb7352b4372c5d4c84aeaefaceae29d11ae
Date: Wed, 13 Apr 2022 23:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649893678
