Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6539F65D
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660408252;
	h=To:Subject:From:Message-Id:Date;
	bh=r+RuK0GyjJNuXXv14EUVQ6o7amAX/xAIj/KNSLLCjDE=;
	b=PHBB0yJPVHaUQeqeosMV5AWZSNPp2FneQdvblbvAK0CL/GJbMNYU4xxvQ7E+Suwt
	XHMLvoxyDUwnZmLPKruq1ygLx/Z92eFPf/Y+xGTNn+0FhKRDGZmukMc1pEFv49QGxcW
	OuLFYIa+DawuD/3yAA4aLk6Ub2tFwgITcIN7/e/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660408252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r+RuK0GyjJNuXXv14EUVQ6o7amAX/xAIj/KNSLLCjDE=;
	b=j6XqxID/EoDqRMsKeSkx+/DUxjN0+V3DsAVXCrE3Kkr1i7cT6DOKDQE9KCr659q9
	XDHcMILDQiiKhu9T8aF8FNkc0Iz/w2fkHqA5TtPE05GIU54my0B5IA5Nysz2wJyj3ax
	CraUru958E65fYM6eiBb72lGyyk6UhkRYkMse3ig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182980b489d-167819fd-77b5-4dd6-a251-4d5e35e662b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e64fdd48d71d93e4e8f3f9556fa0e874d92165f83f9796388b22b2c3138b7a2
Date: Sat, 13 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660408252
