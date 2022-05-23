Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316273D7A
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 22:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653343679;
	h=To:Subject:From:Message-Id:Date;
	bh=cYeNNeZzoRnvEQOIK1wJ2HZ61GNc+xPRV3zWq4cgsKs=;
	b=Sl/ym0/9q/3R3hq19mQVrBWw7krsiBLqyc3DG14Hny0CefFM4cgB4vS8ZHts1q3U
	Qe7Z6vafauNiawW3Bz5MBCSPuFM0zreb/anCO/QaBaavQ+APKUJwKQYnZQDYrFL9Li4
	Vjg0nIboytqvHvOhvQ45rpaxho9VLELluRPufNqQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653343679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cYeNNeZzoRnvEQOIK1wJ2HZ61GNc+xPRV3zWq4cgsKs=;
	b=aqOwofD/p3jhIh98DSSUQwW6/T4aGhr+gQ6CBm8y7lgnIksgX9Yrk195GRPsmIuh
	HO3f0O0cukWub6dpFkEAU9zMdGLE0TcD8bzi7vJIWKEVuaVzPHebQy07Ndf0F0dN+3h
	KHOz+VvMelt8UBaZRFlAXTJCOpd+4pGsCw9OgpS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f2f6731f-a5ce4609-5ddb-4c5d-8b2f-9b42545f1e57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b692362dc306442621839dba19e5a38a218abb108a65dfee8b22d1751dc75951
Date: Mon, 23 May 2022 22:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653343679
