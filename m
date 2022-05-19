Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BA92904
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 18:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652984279;
	h=To:Subject:From:Message-Id:Date;
	bh=b+uQPENU6k3ouBzeb5SN3ANlyVUcfqLPo+CEt5DXs3k=;
	b=KEJYn4cnk8I1rnbnGHR/8e/FmT54x5bQF5V2Aroh4JXaEqKNJ3ZDy4uEqrmlEWYs
	8+gpBDXdFCGCqbS8eLNsJI08p9Nk+7tQh8zitySyo8BXZKjtWQSoReGUymbYqBNrjOO
	YBOO4FH3XfHh1JhIpDCBtWx5+gG+AsQDgN+HD52A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652984279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b+uQPENU6k3ouBzeb5SN3ANlyVUcfqLPo+CEt5DXs3k=;
	b=DXWaDLbb4pog3NU1D9U+7CPWKQ1cDdQyWW1xE1JH915mTZNcEUX4+OTwdAszh0WT
	upvLDUi6PN/wy7uMsOAF1mdYaNPAMMCFq0ps9hT9074RZRHn7jOko4i8qJKrBVuMfzz
	opKWRiOV6OBQqPONMBi3fOivLfuG9XvIsKlBiqm4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dd8a7191-345e87de-a0d9-4416-8924-2be46068b9e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bd03998c589a768629c721004deca7be9ed1fa02f24d6c209431147995e87d1
Date: Thu, 19 May 2022 18:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652984279
