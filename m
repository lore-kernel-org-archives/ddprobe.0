Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C607B
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 07:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645428385;
	h=To:Subject:From:Message-Id:Date;
	bh=1euD9gAFvm5RBSa5uShoOfSRKEKuMVKsHWyvRLAUXAQ=;
	b=ksgRmZF33kmMsVHHdP3gYG47llC2S+/Jy6hs54t10cXGot+TGblin1CuWZ5vYxSU
	b1iQ+zN9zQnrToNKZbY8YB+ikfw1ZaggVJvk6XV4+9y+2o98wlYxzEeu8vRuSJ2jDL+
	rWC/Xz3e9M2dTyMNMnEEam82FmNv0OuFHYURF4kg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645428385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1euD9gAFvm5RBSa5uShoOfSRKEKuMVKsHWyvRLAUXAQ=;
	b=ewUn5Yr87TUtq88lucLuQbMOS+N1q9oBO+ksmbF+2UnnZy+ozGU4kB9FnV2MLRBu
	YDdpYekD/x6isAMd2T7QjRv9gx+Ljl/LsUD0cwn3bPkcHpD+htSijyBUHEuoTf+0Kwh
	q8FPNbR9wmHmKPEKLZCRfz6jzSp2eX9pow9sK5ZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1b2ca418-5893f788-f2cd-42ca-850c-dffaa31d8838-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18bfeb1472985a3a1727f4f50a4f82d853586f2f7e783c57a85ac034e441eccc
Date: Mon, 21 Feb 2022 07:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645428384
