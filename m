Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A19B3C8A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645630585;
	h=To:Subject:From:Message-Id:Date;
	bh=+P7cmmRnvmJ8Yi6vhPpfhabzo1r28+KT5rqod8WTqHE=;
	b=EVcsaBzo+lxt10pNXJnDJUvShelYNxxvWygUk9WAalRWmwQqxSLbX7PWkzfoB9H/
	23fChb6qspzQaPDxKerXfMX6ciCeGs0rAdo2Ujw2P9NgWppYNuBbWfM+x/RBWIfpctH
	xFAMM2usvY+smE0jX4mk1iSDDr6iRrH0POdFYddY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645630585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+P7cmmRnvmJ8Yi6vhPpfhabzo1r28+KT5rqod8WTqHE=;
	b=kPQ8Ak6+tRLRaGFUxglUYFRGWSMoa2S2bK2VVtMU8JadDlxbxb+DfbYEr7EqWpOI
	1b+T+mXtPACoDfl184Dhk6+xstogKsauhQ3MS/yv18FXBYYdKz+TggmE/RwGoF+3zC8
	XRKgRXQ+qTxE/P0wT2m9HKWQ0mfDg0KijhX/EjW4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2739f860-d7ce7acc-f01c-46f5-9e15-24f96975a508-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e32f50b3e82ab7bd4a714d8c4919b2adae3fb930e7810b4b2467a66a0497c6c
Date: Wed, 23 Feb 2022 15:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645630584
