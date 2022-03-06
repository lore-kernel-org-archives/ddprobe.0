Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81347E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646604085;
	h=To:Subject:From:Message-Id:Date;
	bh=lJ4w2v2Jqz8qpzuWipCIibbGFja71Ek8zB6THRUQVTs=;
	b=RQCJtHuqNfHKpWNZ6rmS9iiSCvYGLmhJcqwrGGGlhFoSQ5CzsjGWPxJJF1N3S1E1
	U1r8ab8bHRSP7ZEpBW81lz8uBiVxvWCSKrN1xWNA7eM1FfsmnVY9GgFgcHwTAhjCsYo
	rXxpUVlu5uj597sZ3rAcxzF92Go3xh2jgybSRWF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646604085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lJ4w2v2Jqz8qpzuWipCIibbGFja71Ek8zB6THRUQVTs=;
	b=KvUarbpAdyp27byiDMYnev7yC+PACwoATgQnyPq+2TGRKe7B7NH9WSIaUv/RLXBv
	uGejsVp9k9EU5q4sFDQm2TDm5w3Ia4LkNRSXqsOZXcusFGp5Df1CqnkUCJXdMFqMsqn
	3Vv2RaNrmSAjl5M3s8TtWpXt45FaBfJksIr+4oC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f61406604-7bae6b27-ccb2-4b6b-85ae-1714f9c8afc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffcd78d971e6c26e9caad36217b16d3d4db8a98f436923f3f8ec6c2a0cc46e25
Date: Sun, 6 Mar 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646604084
