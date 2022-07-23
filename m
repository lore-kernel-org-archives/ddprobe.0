Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2437E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 07:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658560012;
	h=To:Subject:From:Message-Id:Date;
	bh=zgxxM68dCTpBK64XU5Nvf08HKekAQ2KwUYQJNbuuoeY=;
	b=iueGKiqRWWDS+82KNaems8KzSnUjv5QmEsaIQc2QKS98cjytJZSK1fZ4OImRz1sk
	aLhjjSOq9rv3xoKE42IP4TdNQ+HfvRZ6HcZm4uzVVtIdlp1qlvCLDxJBcgUWMvgJzer
	WRbvzHY10tJWGZ8ehq3j6l8ECNIhdO+/RHpp2Xio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658560012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zgxxM68dCTpBK64XU5Nvf08HKekAQ2KwUYQJNbuuoeY=;
	b=Z4i8FACdsw3MwCSPdf7fbjsppr0MFWA7eaza6rKEkY+Obt/RbJt+bv76W8MDC4DY
	1OG/u3VuYmX/e59Sq8bG6IyGhj7tTUAYX/BSUtIpLcYcCx5N2Bm4plydaZnoID5lvOI
	bgGAZ2EeFmsBGQhky4cRwxp+hdVQiJo4W6DRqvf4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018229e16014-58ffcc7b-eb8c-47d5-8e6a-1df90a7aa1fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f5df8f7c33b10d40b84882849646b9629617f9d6510b30a71be50cb0c693778
Date: Sat, 23 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658560012
