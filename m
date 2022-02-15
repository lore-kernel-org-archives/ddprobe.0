Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3534A116E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644905484;
	h=To:Subject:From:Message-Id:Date;
	bh=i6puuNT22XT8/r+cGigQXpXxaswcw1tsUi/QSxPEmYc=;
	b=bDxu/GNLqeor0z2EXVCgcCpfclJB3WxKkF5ptC1DLhTve/FqtMvK91nmLJpZhm64
	Ji8un8JIEITRJ0dboRzIvYOM6efax+vD4MrMNdlI8T/RhstGv1k4HjjsT392CA1YwSJ
	5ljUEUsGE8LfjguwBBx8mgFoqs5T+/KsOFr4J0dg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644905484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i6puuNT22XT8/r+cGigQXpXxaswcw1tsUi/QSxPEmYc=;
	b=SbNxzwonIdcCNRS3KMV74RhgqWZmpBchA7x8Fq4POiV3hovSQr2HedkA0rpgP1HJ
	qvlpCBGPe5zij7O014TTpb5dlTSI+A+o5ALOtUfClatzNCYvKu37/F3FaPsImkXJD1K
	zJ8FU3u+bF726HG8mucGDNSApAMUJ4zvy4J3UJpA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efc01d1c5-b5bfca42-ee20-4f1c-b876-4a1788220aaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31149c6404a2283beba603e3c58949250e5888d36493449659a44e6a62577e31
Date: Tue, 15 Feb 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644905484
