Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4D92FAE
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 21:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648415398;
	h=To:Subject:From:Message-Id:Date;
	bh=Bcioe8w9Lxo43CdviHa44ZCJ1SDLf8d8o2YngaEyPkE=;
	b=ixz9EYvY3PTujMfm54HkNpSajWPa0sFAk5xSHLnhJDh4xxIzJA02KOw6shpll/Qn
	vUmcGL2QL+h8ziChMqqPf1RVeKqBp7piTJ9KN11/ShDdh3Z6kesINdU/66akbY21sLR
	pZwdzoFeiCLzVmFwNY/BN/K5tX/9TUUNxkDjGWwQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648415398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bcioe8w9Lxo43CdviHa44ZCJ1SDLf8d8o2YngaEyPkE=;
	b=Dx+JGYu5QjUBlbBX7+ZPl1d++oKJK6MPZz+Jw/iyXBZ8r5CX3/khFagO8Zr0r4c1
	N40rWJVGTi6K48EqNK6/TTqZuO1OLGpRoXpw6YsX2WVxWInrKQjpCs64J1kti2iuGlC
	pvPcwo+F2vCllQoQRG0vgl78IjSAp2hoQJXdsvxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcd36d9a3-cb9884aa-0e5d-470d-a30f-5af3101d113f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9be96810657e9c590d54d2def5e07fde2d8bdfafd85eb9cb921255c197e606b0
Date: Sun, 27 Mar 2022 21:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648415398
