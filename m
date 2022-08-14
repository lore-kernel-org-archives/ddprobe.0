Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6B77EE
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660443652;
	h=To:Subject:From:Message-Id:Date;
	bh=/l2AJ7y/At0DHvfmS3LGlcOcNXh93hF/iegZoTqFw3o=;
	b=KVeqJwClOuFjs48CTDpoGUDxzpxKx/6crmbhnIdnaEQQxQLQ/S03sT7ZIuRMql8T
	qps9ktJ5DmeGMf7YlG5GisE2eCt9NxDJ3DUXsitkTHV4t6PobRyKIahPmAaMrQ0Wvmf
	d07sVKQCzWpY0Fy9s4gfGT9ceVRVkqiHVsrwbi5k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660443652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/l2AJ7y/At0DHvfmS3LGlcOcNXh93hF/iegZoTqFw3o=;
	b=V2re3Dv55Z08ILSCN/LDMUPb496PS9aQ0O7JttILwTrevuI94OF6ELVEMy0eOlQq
	2Lzq9gQ8EvMCSRTPDAEQffF0t6/2fXEC26Y25XaxayK+dRZnMv1J1M3oJJqI5rGm+E2
	5qDMjsLv6EkpeJvVNScct6l3GmPgR07kAaevtD+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829a2771c2-93bbed3b-e0ca-488e-b5b0-31fab0de34ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7094cbb16a55e4f89a799e281b964a3ef6464713ac05281143aa634a05770003
Date: Sun, 14 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660443652
