Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4059185B
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 14:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650466678;
	h=To:Subject:From:Message-Id:Date;
	bh=jnhxYgp+gl+4EG8Z+1L2TfnYg1DR1/CcHnGX0ZLNTiA=;
	b=gCWeAEHwGEJr4LEJz8iIpX4xhbPXcoG2CUxvkyCqogsw54gZBV0ErWLoIBZIHCmk
	OA8AClC3QJnBiDnQ+jPrbVijZT/UfpRC0nAzi37WhsDPVbFu0Tpt/yFbTHsY6lu2gqs
	IFHO6LM3j4xU02esYEGgbxvLKujmz6Wd5EWbg0tA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650466678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jnhxYgp+gl+4EG8Z+1L2TfnYg1DR1/CcHnGX0ZLNTiA=;
	b=ExgzZHZMVP6CaxX+wYFRXPMypjE4SeE5fhOXl/B+HPJFvNlS/Q1tXW5EkN4RDTFn
	0ayAyIOC5E2kBTo98CNqBIwzrHRzbeGI7/7wiRoPs6Dc2tFpndnvH6xX9A/sRzoti1B
	6c1YGEwIhkblsS+vGdCByhBmg91KUqwiusJyfi84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180477ae5f0-356da983-6e46-4394-a4b5-458670a5b8e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 439a208feaaf954f296cb6e6898c5da5e00494d544277c26e31149aa7609131c
Date: Wed, 20 Apr 2022 14:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650466678
