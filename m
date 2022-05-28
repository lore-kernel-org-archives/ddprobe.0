Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFACB1FA5
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 08:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653726659;
	h=To:Subject:From:Message-Id:Date;
	bh=O0V1DG0CZj/S9t7usCdsuQ7hSSvoIKQ2vHqUmei+C9s=;
	b=lmrYAz/4sDLLjPhkYSHbGpT5hcUeXORO/deyFNeEcrOa06T3ug4X2+1aNpNl74Xy
	OMNFewtWkj57BzK+80NTZFJYA1GDoAUEqS5U+aTgI7hkgHPzKJFwz1nO8S1D0ypLV4y
	R3l0yp2lGfEfwWy/zBbyGdglBHiXThPaWRgdlUak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653726659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O0V1DG0CZj/S9t7usCdsuQ7hSSvoIKQ2vHqUmei+C9s=;
	b=LXZ0ifpUsg4weEVL41iQFM/X0CbImbTfLXxDreOo7WxUKpGh5WIfWDJaPRjzjR3z
	SFRWYu5wH+PiR3NtBouNoO6cX6sQv8i1u1fhj0SFiEMVnPX2pD1p3Mtqd/y9chkIwWf
	Ni2RaEcxqfZBFMyQIdjZMSK8ntq4ampTt7d7rx7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018109ca4299-f52d6e86-2ca8-4519-8bae-367d20d71bb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46a642bbbe5655ba091b8ac0727a1717dec89ed57bd60490ca2f300430732a1f
Date: Sat, 28 May 2022 08:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653726659
