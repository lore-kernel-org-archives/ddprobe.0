Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EACEC1363
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 21:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648847818;
	h=To:Subject:From:Message-Id:Date;
	bh=JH2c0vwdSr9g+yyF0jxDfWziolmmyoi/GjD92BqOT90=;
	b=gOgJI7rqlq2O+qVvVVgMDfbXpbE5oL2PRF8Ul0+VEe5+lwMd55fTWTShL2Q9lvkH
	iOZAxQtG5KYHhG2v1DjAvgMPvDb3fwVJACAS4ONz6Fsp59tzrG4tPQQ+JVmdXhUo55l
	xRDvlMl6wRb14E8r0lY/1Sa+Uev9rUlylS3wcW9M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648847818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JH2c0vwdSr9g+yyF0jxDfWziolmmyoi/GjD92BqOT90=;
	b=HsXGGwyynHfFFYkjfXdlpJIdt22MbUbHMByRf0lZJZ5yxGh6nEr7EeTaCNa3T1q7
	sNHn9Qz5TrO31KY6i8lU8yS3xvT/I8N3WCXqZ0XwlO2l5gQ8R2QtzQ8dHnPMWK8VkbB
	36YJzgdP7QUsjbQXJ1KBb+h/7VFC0WrRfn95jlBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe6fd0e13-5fe78141-cda3-4477-93c0-fdfac58f27c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d4975c14828e407b335217f5a1fdbe118cdc59aa2684a3b47776fff52aad112
Date: Fri, 1 Apr 2022 21:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648847818
