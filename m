Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0E14C6A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645624284;
	h=To:Subject:From:Message-Id:Date;
	bh=jplDDOLTVfkT46WMvkQkdZrWQuO6MyN3xVA3EeQheqI=;
	b=dr33cpGprCSQXnBIeWKurvx7PGKcZGek2ZERMcBpwLzpx2wmM4bjVTpq3T9YEo1B
	VFh2rxxg8MBCFcgG//jZGyxoXF816CwtkW2vbS0Vjd1WKbAy+f7OC5psKg2xXqYtYW+
	3tUX3We3jFbjuyOgs2Pc1Qjxiko2LqdjHQgxEF1c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645624284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jplDDOLTVfkT46WMvkQkdZrWQuO6MyN3xVA3EeQheqI=;
	b=CRCwBCvOp3xUTgXSqhjnKspNoFxWFZ0E+/rChqRFuTEUHZu5cQmDFtLisV02uWsh
	5zKmYcHLVSwnHk2za74AFIgGTrh1jOs0l+VuZcF1MxfpWLgj7/rmzlZce0yEAFF8f45
	zUqVZX6HWxQsA0BAQoZ5F6B1PzBwsawvtgoTsKKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f26d9d658-87908c76-a669-4a15-aa22-f09ce0a1b98a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2c716f08e2076f7e9f62c3630b6fc41e72e92a006699491f104e422c5cf6bfa
Date: Wed, 23 Feb 2022 13:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645624284
