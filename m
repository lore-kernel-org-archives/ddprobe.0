Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68076144
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647897385;
	h=To:Subject:From:Message-Id:Date;
	bh=5aSgonOtyfSVduRghC7Ife8BwVrNMukOHgm/TDXh/AY=;
	b=d5QCtCfjp6EDqOKaQGmO4sc+6M5skBzceDx52AnfcaEVbIiRNLuIVwgMouzlbDpR
	1ACqwUX6kCWZOc8aPsT5BSP2pKhmMYM7tTcQnXqWMttr/GbOwBI85Qbse6w5kIkCZak
	nymJYmJLSkHDPIZAEqFDhK9IxYYEcdn+EfivOc2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647897385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5aSgonOtyfSVduRghC7Ife8BwVrNMukOHgm/TDXh/AY=;
	b=O8AZL5ELGxfZDMplpn8aJa4OlSEAg7wsH6PhnoHDQI0gQJlVw+QtTAb0akTX0LRL
	D4humRmEEw/t5o/Pvp043Wr/Yas1FX6LjoYfioVH8fjfmFrULYaPHkRZ8sZtfu3zGE2
	lFJ6EMdBhLZ08fcN5W/2a4uY5SXuYkyHr0mKFUS8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae56976f-b7cad1ad-f852-423a-87d9-d1c501a7b48a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86e13227c137c6a6119c3f287add0890ef24a04586716e1ceb54708b3ed47025
Date: Mon, 21 Mar 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647897384
