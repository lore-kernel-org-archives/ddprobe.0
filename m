Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5D37E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 10:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648119118;
	h=To:Subject:From:Message-Id:Date;
	bh=GTfAuI0AurTUWj7eKoBGl7YGi9G04bf+jZg7VBV8HZ4=;
	b=IlH9ztJpu4aa9PBJOnF1thEdzlMtF1NvgaeVS1NuL+1/E+nKr98XL8+Zv9YLuP32
	W6h2DUPJDbk7fq78oaFzJjNlrrpFk5huy2d0W/jQJWQo8qN/eSeY4h80ITyKDL8qCQy
	zkLFRHkMeaH+AqmzyNsd8UuWkqgP4YwJvJkcsUY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648119118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GTfAuI0AurTUWj7eKoBGl7YGi9G04bf+jZg7VBV8HZ4=;
	b=Hsvr4bkh8wLIVCeWoLOIH33Jl/bv7Mp4l7rCrJaywhuVwG465ytvcFxYbHPh3WIe
	LXdpPClSVTtV5byslfTePFx+7OnZhCxwTFsMlRj2sHIH+IdirFonsd46y+A3OF9AYcA
	whk8NXTNOrM88YBA9NzX6zPIHSpluhT4U/g5JYqU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbb8df9a5-ec5d3f0a-bc64-4726-874a-dde2b078ec80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ea151066bd36737cbdd8df2c1d80cd499201890f0f2cd259ede511b331cc5ac
Date: Thu, 24 Mar 2022 10:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648119118
