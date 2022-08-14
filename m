Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB02A29
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660450252;
	h=To:Subject:From:Message-Id:Date;
	bh=Y7ZRZsQVeI4tQjuu9aiNOjPirZkyfdA7FyndE3kxKFs=;
	b=NSRM81IHeYV0dLNaA6Q189Ktt1LkjPCeOCbSMwVQpVy3seUAIWw9bta3mytYN3Dc
	+rKsxvoH9jfpZ6VY97nUGkdAH2GEWDHU6KF+0T1NlHDR+nD5oS4GUJeogz8wnqXpGLt
	ma1ujyBSZ/X4A8pvH82nCil5sti96bj+Np6WSjmA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660450252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y7ZRZsQVeI4tQjuu9aiNOjPirZkyfdA7FyndE3kxKFs=;
	b=NkxqsxvHuTMGKFFeM6kCo1u4yqsFeZP6nFbq3X9fMs1L6/BSFYGLNEz84QtVPpGy
	FwA0Hw38/ZPERROY/JLEqovafuixFUYnqHTEQLda4srT3ypmVf2KiGIWfFBoavPYYdh
	lh3FL0UDWAJ5YhxWIvAaYQaDYaHnSW1EtDWLgMw0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829a8c271d-ee522c15-8b08-4d48-8158-d11b482493d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49fc4f36baa24131626aa117d8ef2683583bc80c91cefd55251d51a525618ecd
Date: Sun, 14 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660450252
