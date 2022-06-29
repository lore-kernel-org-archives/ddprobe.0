Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A437E0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 06:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656484012;
	h=To:Subject:From:Message-Id:Date;
	bh=2xdIk4fqExgQlfq0qRJMjIpIsCFbV7U+3gJ8k9xSrg0=;
	b=WOSMV4pTUrRTsY7eR9dH6Fp8w1BykJSPGqNvq5xkhJ7pzNyzJMzxK867f7eFgOJl
	hbutdsGB5BPuQ38TC78QmABe4Vvz9xSpX81a0eCKw0zkj1X2CQhcBcgZSVMsgesc0XW
	gjhyBHvH4lJs5ob+msyOYzzgu3HwqoYainkXg56Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656484012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2xdIk4fqExgQlfq0qRJMjIpIsCFbV7U+3gJ8k9xSrg0=;
	b=I5hNiQdbpLSJMFW1u4JL9QdftIu1Z9Eb0HHzscX9iwn/jWm+6nvUyoh3sjDPlXB4
	/4cl/6GJq0DRbdk0y9sKO5mhIjAXtYZudpA23zSRwaWL3Yp9YCNSf4QpQnAY1An4r8A
	A3XSYyWdWIfcKc6bg6x1UfD7EDNsAxxRpN62aDKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae2420eb-0c99cff4-8045-49b9-993e-2dfea7816529-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ee6b61dce2d54aa32f52d677b6933c9b96d6e518ab5bf4ae5ae8cf5678071e1
Date: Wed, 29 Jun 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656484012
