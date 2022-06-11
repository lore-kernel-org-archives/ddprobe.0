Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254487A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 01:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654910819;
	h=To:Subject:From:Message-Id:Date;
	bh=ryWumcljutj0+lqMn3Pxm38F8LivHa2bofqHnoJ58Wc=;
	b=kczZ73PfHqFMM0MlLyUXTptAXyP41pmkTDVAeVrTSrPPhZiWjmXjosOADWpnaRHe
	g/gotmpN2mg4q914AnwIZqOe7Iq9/mJozLQiN0cSaIzeUh7lkcIwt+HcBAJbmj1Kuuc
	X+Ric5hdq4KyB4u05kkYJY8gfixnJOlBs6R6YK80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654910819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ryWumcljutj0+lqMn3Pxm38F8LivHa2bofqHnoJ58Wc=;
	b=YBX38aS5P7h+NDHfXfNS0pJCqjtoZRz053UgYLEfDgDKwULWjKOHwScB82+gMQd6
	xTuoEdYBbI4aTWjp/rOC+DWbTz3bYcVwedkby+QbteiUdQBAQs0ZBGjsbilufLy8uZZ
	OYn6hRYfJ0OU3ItcZmAAEhWlfUepBBGpoVEIMIRI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181505f1bda-dc87ea24-41e0-4f98-9a94-d8ae9b4fa59c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b4bce462124084f8ed12fce16616c212d33292375a7e0bb2ec7d61684885193
Date: Sat, 11 Jun 2022 01:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654910819
