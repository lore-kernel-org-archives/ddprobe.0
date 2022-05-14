Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270162565
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 16:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652544299;
	h=To:Subject:From:Message-Id:Date;
	bh=ukjNXapv7yK6uY4j3pd75FAu67LVQ8QcOWEdreQyPvY=;
	b=JGlExg8WMdZ/kAAJaqdHzKTucfFF128od2ZrC5XpQQjFel5OOusTlU/n6r8J7wTh
	0Txq0uE43p/C7vkRbzwll5hzOlRBFXQho7AbN0JwbqySd6RkcFLF1s1rPXa2v45xRPA
	rcVujPgPIRoyCRXM1laOr1N/oAtxx4pgwSlMB/UI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652544299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ukjNXapv7yK6uY4j3pd75FAu67LVQ8QcOWEdreQyPvY=;
	b=XRWVPEDU3rBnQb64IIwrCHeBr0O74XMxZfCoBCa/2J1MHG8aCVEtCwOy2G1WnYrn
	CTdVm213OUGginIZyhFRd+dsAz/KVMYkzObJg8BC0dWJrajQwBMqWgSoUQdrM3QMhMt
	kk8ODBHFnRCrVIJNxFN7E9Jc6lF1bgwZw59120c0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c350e18b-cf73a051-820d-4096-941b-537b3eacc02d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5308308ca60455877aeb35531a59423197f3e3babbed2b5186f49c35b960cb3f
Date: Sat, 14 May 2022 16:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652544299
