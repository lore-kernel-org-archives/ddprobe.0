Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227CE2564
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 13:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653745379;
	h=To:Subject:From:Message-Id:Date;
	bh=6ofpr2o8QYGEsjXnV2tIrnXUkgIvUugVhxCqVs4bfjI=;
	b=c4pNZMQ4uqt7Bu9ZTCIJK6P+d9vmfFtgi43p5wRYjPYGLWD6nfH3wmPlwlt8dhkq
	T0wROTO+bF5AKFn9eyILoOT2Mj8psCuVLkFNAMTjWTrioOw7bT8sFK6N5+RHPoU4foa
	Ztce9qEbYGU5fxISK2E8CqM/eFYWSyRsp2VnhUTY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653745379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ofpr2o8QYGEsjXnV2tIrnXUkgIvUugVhxCqVs4bfjI=;
	b=QOZCSCuUvXGqHRqKSxJphHTHkkxR8XOAcUWsu6O8uaMD4B2QDi+1/G9ly0SjCaSD
	aC87AR6NHWpFhahunQaKXWZgUFJdXHPBRA2vc2m/Jj6FvzsxDqa1gCHpKq6K4XIRXjz
	HwcuMpqkegjrF8SLA2vbVgIKuttPmwMDxpqrcvuo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810ae7e7c0-7461ff6a-ebe3-424a-85ef-c4b92fd772ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2131ba7e588c0175ba9a42347574cd5d32b5f0a071e20945c0470cba9ddbeb9d
Date: Sat, 28 May 2022 13:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653745379
