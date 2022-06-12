Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA6EA52
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 07:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655020139;
	h=To:Subject:From:Message-Id:Date;
	bh=6iHRjTvqAvDT8vG/DaBpZnRRcO67LOt6fchJPuNsK6I=;
	b=HkRgbj9TPKEcLp+TXuCsL0OJ1rQoAOausDmhfGvt63Gb3xc9Z7/ihegvvwyNt5AM
	38Gm8/bXxUmUG0ruoUIqjetVV0hX/4IUrHvyciC9tBBjj5kVouuYTnVmrFHu8V/1uEj
	tv26Rg6U7xWME6Dj+h5QGT637znvAq8/X4OfNusI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655020139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6iHRjTvqAvDT8vG/DaBpZnRRcO67LOt6fchJPuNsK6I=;
	b=IDrWi9PJeDYWjLxhF0vhH0uO9CK/DkLt2pZacu/5bbvcjJjPT5jyNBcGZCmNPZ3k
	b0l3OSWpCKoaupLA6VnFxd8fVTk/EhtqJB5lMKSd5RbCVk2IWA3h0/13IzXZSjEQUYJ
	eJCfxnNMEDyYiXbh9dRJWRph7g2mSjhcrUvV5q/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018156e3332b-42211015-e257-4d81-aa21-7610a8532a48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6caab5842d374e66d03454a3db4d9ae580cee85ebfc141188f9a3439448943d8
Date: Sun, 12 Jun 2022 07:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655020139
