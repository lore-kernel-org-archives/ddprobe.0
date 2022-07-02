Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225B52569
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 21:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656798412;
	h=To:Subject:From:Message-Id:Date;
	bh=ReaDuK9HROKx8C/V1Qk0mohBTWYZxh7EFTCInt8G238=;
	b=d0PhfGfQrDcoLTJYer69dUeYarZe9ee871nwcPKd+hOsO3LL/HhWJnaj82zBkZA5
	4Sy/5GbUw4RupTqqua1jACd6EZ32H6eiRvuTP3VFPsXzD9V7t3X8QD0gAWoUUQKaE2J
	XAbHMgGI9KtsTx4XxuwPl7XWuOwl+fG43Kn6E5v0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656798412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ReaDuK9HROKx8C/V1Qk0mohBTWYZxh7EFTCInt8G238=;
	b=Ct86Iw3g/hIlC2kdNNTL7KlAkKn5kCzDRcs02wTtqu1hTWUVgNpcxFjkPuxwZrEL
	IFj6sVtC+QziLv/ojBLTP31l+wFxZw6PS6b76+Mb6JYS+KrXWZOJ8G/3g/BGeUty+5E
	E1JJBWqZtW9SmCGerdK0+S0XQUNQ3Q2ZZQcLkYHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c0e17ded-571f8e2a-6cd7-4e9d-8275-9a7a170a348a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db67cd82f175dadd231c672384fcdb120d75d0a4566598286336269e77917697
Date: Sat, 2 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656798412
