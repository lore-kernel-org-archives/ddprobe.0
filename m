Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135781FBA
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 13:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649770558;
	h=To:Subject:From:Message-Id:Date;
	bh=YtkHSXUHRHpgI/zd5pqDu51eAnIHjcLTkTMw3BbrFIY=;
	b=gCMEjKstI0GQwn6nMCxHyQ0HkpZLg/rhfiW6pen1hdsRYUZUdGfAYqLTDyi9QXoe
	qXnWHqqHXOixuLQ3dj6lZQb687OXlzAhNnaZ2jKrRMHSB3QGJSBM/YtfheKEzQsJT4R
	EBoYrXnG/4XNxLs4K/mXCtJk+eka0wrYsOkIK1BQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649770558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YtkHSXUHRHpgI/zd5pqDu51eAnIHjcLTkTMw3BbrFIY=;
	b=Ec0tyNdsqeIJ7VBFK0RVH4O68BDw9qpeByDxCIMggVypM7WXgQLndCtk5MRq2mqF
	l6/9KWQF0dBI1swcOHW+Tcs9iFF3iqCedytJaeavZ1a/4J70JaqyfcZEUeeBoUVpIx7
	oQ8/v685WmzYxNxGxV+ob83ypOWKQkETmdyt0azU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801dfcf34d-9a67f8b0-1c2e-4b3e-9665-6ff8c42c40e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb2825f5a9c60259f261d38740f19ee66bbc4dcd67be88ba9a9db381723f79da
Date: Tue, 12 Apr 2022 13:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649770558
