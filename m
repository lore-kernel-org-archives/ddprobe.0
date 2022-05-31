Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9142F22
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 12:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654000019;
	h=To:Subject:From:Message-Id:Date;
	bh=7u9vRNOliFpro2dhsnCjmH6hxmPHUZeCLBbpLcc8Lfk=;
	b=QUS3vyi3zLBWsMSm/w8tRjUMV1fCpWqU5KrSUsvF9tGK7cJRN+VLvKoo3Q+0STfp
	OxiKPb/+k/7Yw9QUqvKRyyDdLTs6A5iyHInEJEAte8kOSFaUeorjEsPZS35JPgrt3yN
	z1pBEDKF8se+05f5K9YBjWN6C8FNrbhkEJHRRHS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654000019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7u9vRNOliFpro2dhsnCjmH6hxmPHUZeCLBbpLcc8Lfk=;
	b=Phs19JSA1Ndm/lzfAnOUwEPbfMN068TrzXQmGbGoIrf4fJfKq9rwlTRYAUXd/KCu
	nEd1W9uGtlRTmo6uK8uNuEpVHWzyKeih9v7piQkJ85pUNGjY4wGH3hpyt7Zl8ujOugc
	VYv+RdyKc9f5x9uEa3r70rT693fXAEN8nsojbBPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811a15672b-5f72bf3e-31ef-4f1d-8992-f044cda6d10b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e46f769bbbde94fd421b9528447081272791266456b4f0b125f81e718af90a14
Date: Tue, 31 May 2022 12:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654000019
