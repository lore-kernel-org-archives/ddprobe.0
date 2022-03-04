Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87AEE7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646364384;
	h=To:Subject:From:Message-Id:Date;
	bh=YKwtAeNJ0BkOI7CWba8otGtU9MQvaJIwmQxB6GseF9M=;
	b=Su/0jANYIRzIhjPdgx/mRbsMBNGTlJytL7RNMBB3G5MJW8qP07wwSBdjCgFMyDMd
	X2cVodEWK6IU5jPBv9VfSBDkp8kNrDbtFHpO1j3HpcqhJ+5nPqs8R/L0OnbYkOXiIVS
	8opj4BneTxzf42L+z0aoJ15RK0lUYmNznksvJStU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646364384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YKwtAeNJ0BkOI7CWba8otGtU9MQvaJIwmQxB6GseF9M=;
	b=aL7nHP3KCRvu0ULlBvdbRkAOYK7NWjEcJpE/xKFwpwxXlu3nYQiMRMKeVzBNT35H
	31rJQrh+PBNPGdyrrG+ppfLChvpKOJ9Sqq5HH+x88x/Vzf293gL0JEHyyR3eyKap+3+
	Ho7lTYxggno2YshKuNJTltoQOtbxQABRY8t3hCmk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52f6de05-1bc428ea-656c-4a4c-911c-f553d0572f24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9733948e4521f97b90622613e1bfc9cc873071fa128fee1117e358d3b17a872
Date: Fri, 4 Mar 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646364384
