Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEA77B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645771884;
	h=To:Subject:From:Message-Id:Date;
	bh=YbTEVXPrrs0JvdVIMqd0iUgcu83peDnBsWVt+igq8XE=;
	b=PnhIIjL7mATzMh5cCWtquFgW/9wqhHnjxLZAKYmUYqkBHZIFjRSsJbMWno1FKZsX
	cv1r1VavsQIvil+/6xZmuNLez2r2z5O+DCldzKCQ0gRPFhRf3m8iLcTBPhklpcoIWEj
	j9VsPTdmLDn3QoIsQ5U4xJLPJs7xZ/TqXEJwHwoU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645771884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YbTEVXPrrs0JvdVIMqd0iUgcu83peDnBsWVt+igq8XE=;
	b=IN5etMR4PkrjD2A6d9kNZd9pqbY3tYWlXexrq3rMWLTj2wBu1N7bTwGGdzwgGtHD
	4E9f6+91B2C46LFGsOHnG0kJ7RkChfwNkvpcZPhMkPxD3TqhX6iVhqRLcLWFZtBaWGD
	Y7ZG5meeI5j5UPTtgt+6WG/ondd2VoySas8A8mzg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2fa608c6-dcfbb2e5-5a39-4b5a-b5ac-ef61c4c70f5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5aa6b7cea33c1dde8365245c5aaf1da8f8b82637504aaa1f26b084568335b25
Date: Fri, 25 Feb 2022 06:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645771884
