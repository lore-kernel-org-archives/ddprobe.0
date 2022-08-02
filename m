Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8191B7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659469253;
	h=To:Subject:From:Message-Id:Date;
	bh=XeMPOBVZvRYrZEVTqC5ZE4hG9XA4kNPXP+RvfG5526I=;
	b=BUGVJ1J3Qn391Aab1SPB9fuvn0fpHzj79R0MmwqXMEHgyT150YJXVntF8UcqDH/u
	/C1VEX8Bc2rxSnGwKNzi1okGEO430P3Jx/Un2dZMEG2DGOLhfg9PnfCffPrQDqskt/Z
	TPgZlUjVr4jPGjcSecOU1SQfA4qwrtIQUDfKBMEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659469253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XeMPOBVZvRYrZEVTqC5ZE4hG9XA4kNPXP+RvfG5526I=;
	b=BkPA82pUpm4kzQleLnzIW+2QtYGOe8rOT/inS3QSWQp64QJtvfVryF0g445c+2L4
	0QBRNjM1CKegeBUk6x83UhQULwITV9Z/jaaCuo+chLNqJbMMT57anPZu2egeaSY4j8t
	9fIY+rGuBcHj/T7MY5CmXPnyeRfsjy2SQ8o9+HvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182601347f2-9784a833-a594-4bf2-92f4-2a48facfdf44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47192e131a69173087aaf98673949d9cfd80035bd7de7cac7a3404085fb67c6c
Date: Tue, 2 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659469252
