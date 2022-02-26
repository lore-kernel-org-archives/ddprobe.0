Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531EC3D67
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645892784;
	h=To:Subject:From:Message-Id:Date;
	bh=brCoQtX1YS+VN1zEnT3XOHb5Un56sjcfKm/O84z2wTY=;
	b=GXigaryvFHyqAwoMrDhYkQlEc1Zoa4Ed4+4Ivt9B/zF5dcbeDwN6kulgiQeQy6Sn
	MjyIc/bDdiJVsPHcb5X7SLzY/kurVhynbaf9z9DAx56IMdqwo6IpRq4Ri9vMs8InnA/
	LAa7wpY3r+S82bji74q6kr5aBZ0fVSvbyb0Zf6J0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645892784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=brCoQtX1YS+VN1zEnT3XOHb5Un56sjcfKm/O84z2wTY=;
	b=XhAPUgxpqYU43YTGo+BIglLETdOgskR+6bDD4vvzpqdX4/85YKIpgly5eUo5vBXI
	jpc3hXNvFN4bVy63n2OZWkN6gZI+WyG8RzPq4XjhsskFGzj1EFhBLusR9iiJXs9SspO
	cYgBw/xi5J9qvOAucFpPBjXDsVefWCHLDuBRH7S0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f36dad282-d63b9ba2-75f7-45e2-a7aa-99802a47b0f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7eb6f1013fcbf4c205216edd81a882484bfe8422b58642a54eac42c3b37242b3
Date: Sat, 26 Feb 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645892784
