Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F627A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647432384;
	h=To:Subject:From:Message-Id:Date;
	bh=fij9PPpNiAmbm+gJVJWuntWMnK+4Wtjm00HN3pifCqM=;
	b=XLEtMMjII3k5O97dBr7ptZaDM7qpm6ICO+SThzdNEKqlIwAzvCuzvu1tYMqj3KS5
	7bTEt1WTsO0dMwCq+zRHRWI6qFjF04tkvIAHpnQHj/4X3JaIjIDo5xTCXqok8EZHdfi
	SxTmkPSySfqJGydwNHUDF2oBvvvoLVyprA1QMX54=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647432384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fij9PPpNiAmbm+gJVJWuntWMnK+4Wtjm00HN3pifCqM=;
	b=abaQPjlwXJXZKvRVKoFWG+P1Hrjs6tKBd8kLmr6y3CYxe4OmIhF9I3gz1aaLhRhr
	74aAs9CAdhXWgIL8E0Y7WCg2jUNkvGtDb/AlamJH/y45nK+G+2SUyEXYyR6jLJpJ/Cc
	xmUlzews41Rfl8PAczKcUxkI6GLuZCtTN3F2SNh4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f929f40dd-ddd27f44-2e03-4b3d-adc6-5ad8157ab31d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c8ac995faaa5ecd70409f7f7b23738f3ca5c7eb01bfc6e9dcffbe21ad57eb03
Date: Wed, 16 Mar 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647432384
