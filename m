Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5807E7E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 20:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651004518;
	h=To:Subject:From:Message-Id:Date;
	bh=q+fo888m4jrAzCugLIzU+j2+4DzcNg/PPnR+gCdFobQ=;
	b=EdVWiQhu86IL9lu3UdUUe9CSBfM0nKSy6zhzCsMMYg5ya3+n4eGuh7s7ZzNuHHvg
	uRdWhSb1vHEJbU+ZjWdhYcnWSPZcNj5Or5Eq55x2kEFxWYOFarOmUlTDRkb99Qk7rzZ
	eK2h3jOFUjgDcogTXszxGhUVye0kK6i4xfvaKk7s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651004518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q+fo888m4jrAzCugLIzU+j2+4DzcNg/PPnR+gCdFobQ=;
	b=iQMGUlgQsLrJeBL0extUBTKpimyjWf5mt5uo/sS2sMWHwoWJEpk4isj9+Cw5ht7u
	Y/yfMhrxhT1wLE5QDUbwTi8jpKThJg38E4StkY+R/uH1ZUpCC7tAAscxDKWJ0R+Ktxp
	jNJVVcITjv7EF0NC1lSbidqT1PkHZCmSY+spX978=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806789afa5-43ef9510-0637-4292-9079-8617aac9aa1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbe791c85530bc59aa3e08490d1ab4d5e0e01473f2b414db3da90d405316e3bf
Date: Tue, 26 Apr 2022 20:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651004518
