Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECF6366
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645503085;
	h=To:Subject:From:Message-Id:Date;
	bh=ZCRcvbYAsWyDZpitqmHXPI16MgdVUDWxHQlPr0J/hHc=;
	b=FceUPeRoTajlD82GP/0E3ug+Vr/YA0rBpIhxTARB5b9x8bNEbG+Je9FWBEQ7IYyC
	NCTGhVJyApE1Nc8x4hpoRYXET9jv+cy006c4GvGrzMsqhB6AYoWYyeFda5a+0L1KY3G
	8dkYgIj4aoBIu9Qc1InFUjuQyLN3xojSQksO1xfM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645503085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZCRcvbYAsWyDZpitqmHXPI16MgdVUDWxHQlPr0J/hHc=;
	b=hq4Nq289gi+Hedmh4jcktJqVJtqJMLd6AXw9fkbYc8LwgAy6BVWpH98ozdsuoido
	PgCw/0vTP0gLSE5hdAJMrpwsN3eUhYeVz2+flfluUZ4ci22nuMIn3gLczJQYpHJV0Yy
	ZCto3mrr77IvuerfmXu1SL8pPUHHYX7NuoZyzI3Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1fa078f6-7dfac277-42b4-4daf-9dc5-9b3d6b281a9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d8904e9f334e42fbca5beb94be20a731c13d3f45d763387978c1e28bff40587
Date: Tue, 22 Feb 2022 04:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645503084
