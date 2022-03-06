Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5831FD8
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 14:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646575584;
	h=To:Subject:From:Message-Id:Date;
	bh=AHAtJ8W5cabM++BgsWcYMLo6SYyyXVXjj8WKp6QjOTg=;
	b=cDY34jkt8AZT+NX9Ng6GIVcCcAvMc/iGVnClVnr/0WqIwvDsKOwDGE18GqBduBBI
	D2pMIDJKRShifo3+fsoBHoiI3DD86mkfAjNgm+j0RJeU/Ze6C4ldwDbpeDXo0QOHsX1
	0KX8UQAK4alxQqOE9S7CD4D24yy64mQ/WdqSn/QM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646575584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AHAtJ8W5cabM++BgsWcYMLo6SYyyXVXjj8WKp6QjOTg=;
	b=V1cgaQ/req/vuI5dXueHYt3EGc5rc9oJ7YA0vKzzD9pHYTJ4byAJ9ikQbz1Zgh1V
	hs2MSF4Nn5ZWTMlVy+/afwOvYAMfOyyGBrubv6Pk/x4ZtlM6cFAB6fF0AsDd3oNsc4F
	3SF8PcIVGgPY75pW/sCFkHvcxKxqkVpKfS9xv7LY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5f8d85e7-e4b48f78-0b66-46a6-9ef5-bec42372b0f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93471a255c6b15e109ffb516a2e3b3362b3822071a8f963974b210b173e9f328
Date: Sun, 6 Mar 2022 14:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646575584
