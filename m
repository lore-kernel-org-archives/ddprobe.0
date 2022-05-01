Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0B7D2581
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 11:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651403638;
	h=To:Subject:From:Message-Id:Date;
	bh=YGbD8YhhWYMwhltx5XtUMxW9qqZ7tLEABo9jcDHDGYA=;
	b=hE9jKIaZBOGOEqj6yTjzKXggaMy6Fv7cIeBmSNhvs0ktKgzXl2tY88jp1rHwShTl
	gmSWTuo6VdDqo34zvvv4fSsEehezCrDBT197kqqDgwKmh86jtqQxEDG4eJ/K4haaslQ
	iRArup+XecATOAU+6ihPoxLZH5SIYAaVEONkRuFg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651403638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YGbD8YhhWYMwhltx5XtUMxW9qqZ7tLEABo9jcDHDGYA=;
	b=ZNvFpyQw3eLPFOJ0TEkX4BohhoMnHCsWijsRoI98EAPx68gQ5IIN4Tw4/Sd2Ib6t
	1CsS/kgDGcS4YmozbEn5S+5cPbJe5K5qk9o622lznq5WbTBYRbjFQjlrohT1BX1NmyW
	zyMNbQMoX+h2NLxh53yZrRfZA1FzqLMqovt9JueA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807f53c612-4b8eba7b-7bca-452f-af41-962cd7c6714f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83bae749dc92c20063e60b8d19f23f4cb7b06a6dc38b18aac5cd8619ed21a1f9
Date: Sun, 1 May 2022 11:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651403638
