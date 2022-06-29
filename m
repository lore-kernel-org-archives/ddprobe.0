Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8AC262A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 05:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656480412;
	h=To:Subject:From:Message-Id:Date;
	bh=XaP8I21d0uRe2ztNQc7P7SNx58TGFYjsEc+Q68zJSTc=;
	b=cQy+zQQJjwcGxyyIqCtxVjt0XCrf4e9pnfQPiOpk8r+zmLMHS9DSg9fje+0ZCmNW
	p0KCaPgYLdYwl9fykpjTn2GUa7TlAoo+iApZx8faDn8acdVKX2IfEfgn0tXQcIBjvEi
	fHk9Ui1H00Ci4maQx+jujvV+YRKNHDifLXKngzLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656480412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XaP8I21d0uRe2ztNQc7P7SNx58TGFYjsEc+Q68zJSTc=;
	b=NHighbeDfjjw3d416DWle2RRD+EYQ2RjSf7DekVRiJ6TqOJ+lBjoblERWpkDy+MR
	1wADnv1qLNTerUqTDCc2bAzOsQi5BWhvLe7u2NTeK/JyObWyQqPu96/1BnilDq/8gUo
	j5CtSdc27iikvpfI1yTCAmnQchszUq3omMvhHe5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aded3267-980a894d-07cf-458c-9e1b-786795e2b54c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d6fd7ffda04eaaf281d9fc678dc1296a74acf09b393742a6d02f29292bf001c
Date: Wed, 29 Jun 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656480412
