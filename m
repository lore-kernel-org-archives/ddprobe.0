Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363297FC
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 04:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648788178;
	h=To:Subject:From:Message-Id:Date;
	bh=5UQ+gNYDS794eaIEWVVyFhBT3dy72ddHgFMzOVWWERs=;
	b=jaxFuznwGCX5nKv6LfjdufGek7ivzQ5OZUd/fuwW9QgU5ble8j2dE2PwJ8FhJjFw
	10qb/fGg0CyaSTDNfKm+ycrnaegNiiPwbFs3O+SCN9ac9NaE/8GROW9b+1olxbp66e9
	+TZ91jwiAtc3lfD2SMg94ahiq0kHSt8EiTsFSV+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648788178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5UQ+gNYDS794eaIEWVVyFhBT3dy72ddHgFMzOVWWERs=;
	b=DhIEQmL+cWPvBcLnA42RfKz9Plw/elj9yYdCdnYhYUiSINcaOktiYaate9gJxMAi
	hl36+idvfXEpyn9MIWr/Qx0Z/q1jCaGdaIYvC55O5rD9+yjhoorIvvIAScYyPN7TvUe
	KGV9aU76prfkEeNvY1230ohfcU4OyDaWuP1lfidU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe36f0550-905cea8a-71e3-46d5-acdc-cb20ae0c5387-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5149c1602d0877ec09acc39d7a4f6c863400d94dec377d774503cba8552dc82
Date: Fri, 1 Apr 2022 04:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648788178
