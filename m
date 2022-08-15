Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53ABB1C38
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660578652;
	h=To:Subject:From:Message-Id:Date;
	bh=weA5jiAqs7I2dTMew86TWfnlS1d8dY/1Gsea3l+noKE=;
	b=lY1SO+yePHUx4JPIb7ebi8Q31BkUpGYd05t1ThnnDxDAeyDshpvCFoTsARQzLTZI
	x1FWFzxI/9Zv2+cj9Aqvcc6uyxOxIN+96IBKCLsApkFTssOkoasXrg+pYgE5LOpfFiG
	VWhq3WIAcdqeWDI1AZHqUvU5FHBzfkvOotQhz+Mo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660578652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=weA5jiAqs7I2dTMew86TWfnlS1d8dY/1Gsea3l+noKE=;
	b=aEMhKYp7psopVtgYlQd0F1OEKdNTi8ZZajoc4anyUdplnRXqGZpVgeEm3DeMRAvC
	twMiMCUDZGGdPvkYkPJEHN+IZYXuoX/V8SoHxJoOEAirpYWzQYdrx6QIUGduj77vVc5
	vsGW7/4MJXNfcXjTZpUyM20koTzRKuPF5MDut2Og=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a2336183-ab86dfaf-a868-4dde-b993-62b66201bbce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4cb2be0efa3fe24469798dd68cfe3052dc10fe0cb8454f0fbcc77171338e339
Date: Mon, 15 Aug 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660578652
