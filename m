Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC88ED2
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647227185;
	h=To:Subject:From:Message-Id:Date;
	bh=V3nw7/3IA2anBL9mazcUP5394KvPSVWX86aEiPWZdC8=;
	b=C58Q4a7/aV/oCPlau5DocLoV+M6UBP+yN3D4zl1RIz8PqPWuFsNk102itwLPK9Vi
	Wa6LEH2+K2lBuoHDGGlTuTJVuTggTjwKYzYLziOuS132Q1TPIwm7xIb2ez1p8SKhk+y
	DV7sMM0iwouIS6LtZDSVRynUcIs8TaLKMPtHC8EI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647227185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V3nw7/3IA2anBL9mazcUP5394KvPSVWX86aEiPWZdC8=;
	b=Rstmd0dnF4xheJYYphQUQPEId2VU960qelu0T9AZg7s38TthrDKg+LWpEeeZSSZ0
	M2C2EeT8PZ9vEbKugb8XmGe87XXLYwnIUK335NoSNwsa+tAQfsTTOsWPxsUdENp+LZW
	48xvyMn3R93nDZ61oySah1UCpWSP7uKzE24eJjFs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f86642678-1744dcad-76cb-4081-8036-73fdca01c19b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0eb8384f37c51cd6d1a7f1003b6b941253414285d823049dad492370e0aa15d
Date: Mon, 14 Mar 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647227184
