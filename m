Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B752A33D1
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646230884;
	h=To:Subject:From:Message-Id:Date;
	bh=Jsi8JKPE5Kzy6PE+7d0xGF36csmWNZJHYJxgHaODzok=;
	b=KxkraHKbneNbsVAdyC8qLUHQUJ2ITAzpvopl7Oa7+y8b3PQAD5zHIMU18E/Zc+dV
	4/7xkp3wUBnwfRf8pmfSQ/XriLiI82lMifRMY6GhgBtQxqkzA+UZ+GXFNEJ+zJbFD1f
	9+6mfQLaOg9IgY+zB94Um7fiKGAabbGMF0t/014Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646230884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jsi8JKPE5Kzy6PE+7d0xGF36csmWNZJHYJxgHaODzok=;
	b=KvQmRAooInc1bmeGRqM+xXwmLpOphCsL6X6ua97o0gX71bpKEt210XXGWQafEVAG
	FtzVfcGqolYCvBpGnD8bxcNT7oQSmSFtoyoc095XkBVuv/EiwsizsfAGvdD2o1j0vCO
	R5Ci3BrX80KfJuHrxeT/1b8qs4YRDSngYVXjZnvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4b01d19a-dbee97c5-fde1-42ba-987b-e0ae7a18eeeb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ac7a37b7f7e0275dff819d595cbcb3ac2ea9b0826b5d62ed84dbf4c9a47c75f
Date: Wed, 2 Mar 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646230884
