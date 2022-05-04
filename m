Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6BD7F
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 12:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651667938;
	h=To:Subject:From:Message-Id:Date;
	bh=C4d89p0S3tqvJ1W5VFkKrmU4t/Ye8NOhqQq8BLcsdto=;
	b=EH5AqfjXuCw0RJLrjpD/S1kBb3pSpqW3EP8TFQCljSneLKu5DMkxrRO4aLLkqhdY
	IEYRywr3LwyfhOPcO0++NyKzeYl9+NRkAuQwR9vHiUDc2ISnKrDbJumGFKWh1jl0X19
	j37UsZi0rX5Eeaq7ihKVH0SCnPLWN1LFC7k1pp0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651667938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C4d89p0S3tqvJ1W5VFkKrmU4t/Ye8NOhqQq8BLcsdto=;
	b=T6VIHgMB0mzcI7aXQV0Hi0uRxtAW49Q++QX/w+7mur60shc1LspjKGJe6AN9Oe5K
	4hIRnLm5AjJfevOnhvKZV1DOrC2IX7ryGsZa2g3DbHiC20OQg7k09Q/7K8eKHOB82wA
	xo5LrRnTjLB7g1gxr2vLcNnZ2Vyq6DIgxh2NfTJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808f14abdf-366beb08-b058-46ec-b57a-5285a5950b53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21a7fba7c469ac97ac958e34700704c5e391280e658beb0f21bf7998789d8984
Date: Wed, 4 May 2022 12:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651667938
