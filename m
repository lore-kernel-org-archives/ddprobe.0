Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B3133F0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657898212;
	h=To:Subject:From:Message-Id:Date;
	bh=l1rzXe82lACKKfOD7KcWE9ls6SN+d/l/7FXt02Vzo0M=;
	b=GnNzdFqD73MFe+vxVV6ugD/rJcBtgiuJevzMcMAhqlqxZOjTdamB34sY60qCeL4k
	AX6SvSYU7zZLbPTFmlS1gY1gnL2IcoTQa1kGC4a/uEakrMvN23rmPm4UelWdxu4v1zz
	LjFqsC94ilkOg1PqIRDARvEGM+L3wkSJXE6wXKds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657898212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l1rzXe82lACKKfOD7KcWE9ls6SN+d/l/7FXt02Vzo0M=;
	b=Pzk9VhN1pJYLgVDittXm4qSf+5rLDsrbQQ2MACwkQ/f3weRutAcdN423ro5IOCom
	tmW3gzbbgcBoAe2O1J+HDZ2nZEUu9UsO38JpD4mgcijKC+hXLZw9h+HIWAGJgABTUiv
	DYEOKtMP1j8oCEOs0kw8IUYzPS9vaFU4kCn3KLEA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182026f1bde-67aaaaa8-7b37-4161-b518-f7002d454c4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0a29182849c3c5ca3e300221c7268fea0a437796321e2eb4d8a415835a42778
Date: Fri, 15 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657898212
