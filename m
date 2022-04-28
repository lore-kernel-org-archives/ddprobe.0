Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEC5A31
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 04:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651118998;
	h=To:Subject:From:Message-Id:Date;
	bh=WJedoIQEybtMAPPmcUMlh/xMkFyy3waMgZ/ReF6Nxuw=;
	b=g2st/qc6ub8qbKcZopO3GVUjrizjzdTFnOGvxefkQEK5viaV1MPmbQAMnWXnUb2k
	l7ypoikwSZp4RffCjs1xTrjq9ZtL0l/IxlCHQ56ir2THAykcnEc5npoaODtNfCzh4ug
	hElGiXnSPOYyGzS3GzK6PgoneS160ZMxWPKfJmZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651118998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WJedoIQEybtMAPPmcUMlh/xMkFyy3waMgZ/ReF6Nxuw=;
	b=X89p65VEdSOyQBXwpjpV+7k/6H1z5Lq2fqeDox1cmdyAOt+felsDJcdgPlA3Aj0Y
	ayv/YPLWSCAOmdt7C5zkrPPInzlYFuWYymtXZH5BeKWjYNiIXLKku2dEE8dhdfkfx+a
	7YTWwvBxkmGx2Or/hEdxnxipCrMF1qnlpbVkUOh4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806e5c82e0-147b0a41-bec3-4d3b-8cc8-abbf4a8cc091-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f9a5b62d2a1798d9f8b66d1c7b98f08bf9fa3423f6ab1585e4eefd86da0b872
Date: Thu, 28 Apr 2022 04:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651118998
