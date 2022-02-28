Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B7F53A4
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646050584;
	h=To:Subject:From:Message-Id:Date;
	bh=PJLL/BxwXN9jonqa7vXmMT9WiMsCDGJTiFBLSyPeq3k=;
	b=LvyhuM72HWnUQgCdUf/UKXk4iV7/eNYSnUW/IkTyEkrI7QvHV+EII2grLWbQ6uj1
	IP8HwNJFFb48cA+gK/6vptznCVFq6tU2tEcvaK+FVsSmgZTG6PWYkIoEqjeg/8/sV3+
	W3G/mGFKrBtoNKpm97O5HSBln4n0k3FOTbwEYvt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646050584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PJLL/BxwXN9jonqa7vXmMT9WiMsCDGJTiFBLSyPeq3k=;
	b=fuCK6GFtP2hFh1V0EUj74JL/OjlenFNq//uci5HbvQeOklPcKAOTdq6dCgFZzkVQ
	adSjpl5k8CMsOvcBua83XlLkmwrry6HgMgkAkRyXIl9bUhKU9vOIm5D7Bs+Z1H2s8hH
	5PhOHSOHA91au43uHZIWnBx9wJaKV6gdrepBuJKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4042a89d-9cf547aa-2645-49d8-89bc-3b25a0e3c438-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ea5e3180257369e1feb6919b8dfa0071977b0a5ac4958bc9d3b31ddadfc1cc4
Date: Mon, 28 Feb 2022 12:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646050584
