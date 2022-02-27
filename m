Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769134A91
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645980985;
	h=To:Subject:From:Message-Id:Date;
	bh=9x2fJLwsL/1YJWvzxu1ufFafOo3WYZ6LMNtYogIX1gc=;
	b=MOyvmzmPHHyZf88+wWw85pS0Do3QEzCiY+unLPpv/I3hkv9M8mdFIigEfq81FrNx
	4YwePqwqTwPccml6+lpfp4z11nt2qi3r+yadMEIaYDiBT6vwTtvRUKXcQQIR5e9nxUx
	AZ3dH4O4JDqhthFuo5pV4T1Aj2Xc2Pty63z4JgEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645980985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9x2fJLwsL/1YJWvzxu1ufFafOo3WYZ6LMNtYogIX1gc=;
	b=f953GQnmaiR2TnEonrmyH5JJ8KX4lybkpcIUNm/3smS73VvZL3aNVqsRinyFWNSB
	PSoP1YX9vpXRdfQ83F3JQjGpFnxF7bmvi8Mgvs5xbeka0WqQt4VnAidz/UZA2i21Bvk
	IFGULNUM+aQE0RYzbTgialoR3wba6yu0Wsf0QisQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c1ca5bc-b488939c-a4d1-4750-a6dc-6c54f7a71da1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc6809ed310851f03207ae9d9e3ab7ad5c3223870fc67b638b4e4e4bc615d82e
Date: Sun, 27 Feb 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645980984
