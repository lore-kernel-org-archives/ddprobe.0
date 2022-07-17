Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A4265C
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 05:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658035012;
	h=To:Subject:From:Message-Id:Date;
	bh=UHLy58dmATZh6A0igDFg6kppVOx+ICDClKR7QMyP3LQ=;
	b=NIaKjjtLAvcxgJp32HVPc6WALrio/PCRMI576/leKfH7ogW2O2bbuDh5529ugupH
	G3ZCXlY2zIU46ZJbkEe2/u3eD3inlWf4xH9tRssn+kqdQwoOM+vlT27wOoyJvtqf05K
	AXjACso9qMg7cCK9k3m08WC/Lgq7lefHv4vcUEh8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658035012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UHLy58dmATZh6A0igDFg6kppVOx+ICDClKR7QMyP3LQ=;
	b=N0LSUOzjB/Vqk/lqH4olYn4J4XKWMsueIt42o7fk3Ae1wc/85NV1KDn/X30ShxiA
	DG68ksqzcmiG76/hcOl/y1t7iPCLvpvEIJsErgQ+qSd/VKuL+k4comKyLXxPOgZSXJ+
	35NGNbRyE81aeGkKq0pbdn3cDQXPAbY56ihzG1YE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820a9682dd-eba40b6c-b8e8-4770-a7dc-ee636410ca02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38c72b526365ad75253c102bbd76212032ce6f7290ea9f85465bc25e00a7322e
Date: Sun, 17 Jul 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658035012
