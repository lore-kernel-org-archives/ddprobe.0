Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5772F21
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646331685;
	h=To:Subject:From:Message-Id:Date;
	bh=qMXhlJoJgjFPImCwDQ0P0APkJDvHpmHtFs3NxE9+6NY=;
	b=CbTDSL9a5VSv+E6sX+zM6r2crZ95mTgGv2H++2ZAGwS/4ZtCTeo4Qk6VTZleTzAh
	ayD2DdRxnvmAHpGS7B6pBP+VfvV+Y86lLPz2ppms4klEWBSCp7bLbT9Na9vOLAHqoPc
	t5WyZrTq/JU5sdVCzUE0c0SHhdHnoXWL9WAdUyBI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646331685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qMXhlJoJgjFPImCwDQ0P0APkJDvHpmHtFs3NxE9+6NY=;
	b=YWt7Paz1DlMJPxbLts9YE9NYT2UkqReYvI0ssPbqm3DLdS9i6DSZtmH/X3XrBV3B
	k2o5L9klF8klscZSKA72HOTdGlxtkOYgDaBsseTkVGaiDsLmt66egegrfLs0MOLG4uq
	ChAFqj7LMUAoGfm+Ut0TCBSb20JXgm/iLm9Q5niM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5103e85a-2bb14bad-d3dc-4f61-a062-8e30196216ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 565122ade4c39e383642aa77996a504c439cd65440c4441a34e88f77c4289578
Date: Thu, 3 Mar 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646331684
