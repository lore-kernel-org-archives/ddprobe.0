Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7527F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659442252;
	h=To:Subject:From:Message-Id:Date;
	bh=dEfJyicHZVpDdSlIffW7eHasGiSvkvPAtzspXIAuWpA=;
	b=P75lI4wrE6MoWVfwGbSwEaWXvayiiu+lu6zo5BjqT4jFeIO9GcVGjzGDtmoyztIp
	sXvDrOqrtasCYTrgkX62kuGqPJ2U35UIvLMGEpxzOPvJL5SMPwcwRnTJNe7d9Z0StLP
	wyrWICvyacTXNN1D5TPVFt/rhIFPKInzmkZYPgpk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659442252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dEfJyicHZVpDdSlIffW7eHasGiSvkvPAtzspXIAuWpA=;
	b=hcU3MRSpciUpnriG1QsGTcc4aW1VT8HLS8bluO2BDoF9d2UIpuJqTwued20BvZnD
	d9rWEnzOc3XMyU24fAAXKiGKgyaSsyvpyP7SneHZz63bHZ9mIi9hAUxIDOty+VPN2ff
	Y8ESwvjR6MTOrE0J+Gzy3pwUv+2dso2wKKdHjnmw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825e774b17-777c7bf3-c2e7-4c14-b77c-2894ba317af5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13fb1b7909d39095f7da17de311e8727e91ba840ccf8b48e6126ed0175fdc181
Date: Tue, 2 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659442252
