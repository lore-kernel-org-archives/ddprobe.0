Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9857A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 02:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650766798;
	h=To:Subject:From:Message-Id:Date;
	bh=gD+Q1lqH331MyhoQkzhB9s6xCSLHa7/FhG2b4V6F5Uo=;
	b=FBRhIMfhLnxYPJdQC55NgTiTlcQMu4lvtumYY+1Lybm2ZlKVyb9GQDu/EbrPbm9p
	m+M9Sk0zUsIf5KX6zsYO+xuD1AZXqntnrs8ciWG4S8fwif2D/bpBpll2l4JAqbC4jNB
	kZuR/OausNRJ+9WA6q7quqUggYqv9gFanhqWp7mw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650766798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gD+Q1lqH331MyhoQkzhB9s6xCSLHa7/FhG2b4V6F5Uo=;
	b=eE0E7i8BqGEsU/+1FDHYjE8XrDgCoerdeSjC3af++0y805CGrz5Nnr+f+CrSvzgn
	6TviimJ6Bd4EETSLGv313/BbMkyUjR3rMn1ewmoN7ZYQjyfBAXmja1xRLEu2m38FbY2
	6ok0awpilcR+odkE2EpQkng5TrM97HYeCZ4U/A0U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180595e5d9a-9a647656-73b0-42ca-9456-efce3979450f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bc73ac4821c60790308cba2d5b9c1f984011fa9bfc923d62a22c9757b4836a7
Date: Sun, 24 Apr 2022 02:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650766798
