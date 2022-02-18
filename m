Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CF12F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 01:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645148484;
	h=To:Subject:From:Message-Id:Date;
	bh=7qyRkrWx7lPEsCwwEARKJU64T0aYB60wQdfxZ94uiB4=;
	b=iyhoZeHVyPkGLNtY3UQehYEky2/TTnSxUpDJ0rvMsaBFL/LRxUy/w0ATKHAP/qYg
	45bT0qgu5bG0GcmIk9ucElbuBLmVMuEWmjUt4AU+pFMcfNexxQkDIAlsWE5UbK8+k2u
	1Prh4Y9a6k7D+gzEl88t9hN27rbuqkJqnn1dXjhI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645148484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7qyRkrWx7lPEsCwwEARKJU64T0aYB60wQdfxZ94uiB4=;
	b=ctjJYm5kSIeQyqGj0iU++O1ZUvlxzUP8t2CjS2eDGoPzyIX3dDFhkwAb8fYbaVLo
	MCi6OBhsjjaDcckz2Yk5BuH4u/EdWfLg8MFpfZ4hfHF/lMj1nR/VQ3VoXt9ROZLLgof
	QwrVLavDY4q7AL3EGPG2oNbzaDooRHM7t1ZyleAA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a7db4e4-f00bfbaa-770a-4d2d-b23b-0cf619cc778e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc53e55acaed4ceffc297530bc425bd535453b81c746895be4abc2adf43831d5
Date: Fri, 18 Feb 2022 01:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645148484
