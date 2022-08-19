Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FFB36101
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660946453;
	h=To:Subject:From:Message-Id:Date;
	bh=a6cfaMXl8vZr6UcgxPJbIGHCTtBi+bPWbvrfII4Y6lM=;
	b=jFPf0YurtqzmKgDRFCkoiLrwWpY6+YZaMZ7C0cLnDatiOp5RG0IhvagLox0j6m4P
	/1+PyCO/gohZh3JWDqDLhmaJLLThmcfr8sJnJiXy3eCbC64oOtJfcBlr/vUDH34HLSH
	t0rFP++dUZhUOVSZUB0nwG0KxNoQ3Okp/u4pE9KM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660946453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a6cfaMXl8vZr6UcgxPJbIGHCTtBi+bPWbvrfII4Y6lM=;
	b=ANIafGltIGFrEnpdDxpJbUccvx2Er10HaPKNCq1a6Scx/1MYjRDORiyv9No0ZFEh
	8ZaAJ7gyfddHjmY5Cw7rs5LCybckEtobWq2qWM9NkhU/SrWdDR7xlzdsTKHYXNSr8oR
	TZKWO74P/ADlsUNq6newbo+5wtopqDUV0yAHpcwo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b81f9044-b44d7571-a698-41bc-8744-16dd455ca525-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9eb8f98c09749576ad04d4d412eeff0960a27c0cdbc2e0a7d5d99c2693e64f82
Date: Fri, 19 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660946452
