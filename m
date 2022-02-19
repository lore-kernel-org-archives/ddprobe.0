Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E4457DF
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645314985;
	h=To:Subject:From:Message-Id:Date;
	bh=8A3kgWla0RjmZF6K/2UzwBkEwVHxRs71zbpAXqwi1uk=;
	b=V8i30IMsj3m6zklJ7Dj7hnYryCdL5EUblYlq4+u/3UxhgseC60zQkNUO7/0tiaSK
	bDeOgU5u9wgpVQPlWMpp9pPyuF0Opai3qvHPP2JJnOQciIpkrfRGvzxHWk+b5PUOUSB
	aGXmSyawvkQWdoJaFYRxFnf3G+rNIxM/MaUPZY/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645314985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8A3kgWla0RjmZF6K/2UzwBkEwVHxRs71zbpAXqwi1uk=;
	b=kel3bFAHTy0d622xLqaGi/oeiFV5HBKhhK/kotLs9FUFkxvEhKrmqR1JUR7Blk2a
	Z1qDQDHcDzpb0Q+bjR3D+oBqGfDS8C8k8De9s9+AmEYi3Yu/nUEjHGSPH5VtZbVb+2T
	LXe8jwfPhgn1j5uUh7w8HwCUNhW75Z4U6eg+ctME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f146a4b6e-a5e9e708-6640-4cf6-8eae-2492eda4ef5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c1659f50f01af1ba7b30d4cab45d89d83ef6df810b91ac4571ef5426bbe8fa1
Date: Sat, 19 Feb 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645314984
