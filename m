Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B667A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646919384;
	h=To:Subject:From:Message-Id:Date;
	bh=NsuvmggnEbiEqdIM35oLL0itoMjMEFr2UgIkLRYyr40=;
	b=PSnVwqpH2GiX1aZqScZlzA7MCqAq4ujvIPWQM2ADILFy2yRdULrdHOJLpD4bEdAK
	a5fkUa7OiWu12u0C7UEMoblZAy5b5VxQYCSbaHPOAnKwQgYvEQgf2PkfqUTg9Xja6qS
	JKxW0EVSLT3wYhD55jDiWyH/vtOMtgjjjCfHPi8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646919384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NsuvmggnEbiEqdIM35oLL0itoMjMEFr2UgIkLRYyr40=;
	b=EFkpte90izilx3jefs9g2x9h5ra6gH9IPhip6LM8/A4YcwCzkyU5iEbvcghvLSym
	QZvxsqp250/5tjdoSJh4NWsputRbZMZHJWwkQ/LLcpl6hrmpijh4PSKfP5J25Le6+fD
	nXR8zdmbB24ahemH793xg02NC56fUtjmbNcWTX58=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f740b7eb9-ba6a3a41-d979-466e-b547-12a34de299e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93e0145f52cee09d312e49f035db0d0b0f2584cde3e938d3946dc7930584b72e
Date: Thu, 10 Mar 2022 13:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646919384
