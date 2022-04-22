Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7832901
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 15:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650639658;
	h=To:Subject:From:Message-Id:Date;
	bh=9DAe8HnuczHvhUNLHwQC2uJe5qif0o1wInSclRRRDxc=;
	b=jrt3YmSNi5P7ik8qxpTssSW8YgGRJ8UlFczusv4oRMcYhD1C0RqkBvDS9RO+fxUh
	85wkgD2yQomS1yzZ3bne9k/DHMWaZ9ornv5uXucRSDb/RoEz1+QYy49QjQmsHtr4KGS
	Q4tbpB3pLeoPQZLPq8rtDxxUKOtaMJiLC717dTfs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650639658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9DAe8HnuczHvhUNLHwQC2uJe5qif0o1wInSclRRRDxc=;
	b=dP2N72yHoGYiCWu0firPZJeK5xQ3uIV+ojd9pd+DKy2bsqBjQLiY/tHa6gmMyHN8
	Cr4ZcgE66krmHqkZBTXNQW/pyrLTL8a8TmHdnHt98eRFy2Qa+OSTPPiG0696GJ1jFXU
	YeNwFJFSJPYmMekuc+5D6Q4PFW/lVqmv5CAF6B8c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018051ca5d1d-ae82e63c-a60f-48ad-89f5-e0a21a4299e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ee0d376d7a2a244de94623ee7cd218c676fd52e0ded91b3af51710ceab10a19
Date: Fri, 22 Apr 2022 15:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650639658
