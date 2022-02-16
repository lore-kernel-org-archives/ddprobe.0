Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3141844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644972984;
	h=To:Subject:From:Message-Id:Date;
	bh=++RvMgk2Nda2R4tvVv6BQIL5OMBrTZfjU7kmIyCbQjQ=;
	b=SiIQOzT5rGONynv1ccyipYCIhy5gviFzAcSDJ8nL8ilTbSTNcVuIdLH3tCa1fvQz
	9X+sNQEbwjWSc/U09v/UILSuVe0DSBXhJ1+rUJEGvl56Nb0Yi7d51M357tt+aNH7Tvz
	qsqwNutmOByg8c32BoXUfsBP/j7fCwKvpW0tm1A0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644972984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=++RvMgk2Nda2R4tvVv6BQIL5OMBrTZfjU7kmIyCbQjQ=;
	b=g3ceMD1Av0LbOEeeR5QJdSI2MjelL99dNVbWxrHDC4HvmQKxqYT5PU3exbJGDO+v
	Byget1cDK+q2qT/BkaXKRpiASmE4ON1h2yuYl8Oy9+U1DGMsFQhWt+x5NkWrRXmsQQk
	GwO4fS5mozp0H8ypAFvT9i5GDGgfxiMsOlJ8RyWM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0007c9be-2b796c21-c209-424d-a13e-e598f6e69237-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57ccc34953a02c0524fec02fb96ee7d446c0f97d20dd379c15b283ec98a23102
Date: Wed, 16 Feb 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644972984
