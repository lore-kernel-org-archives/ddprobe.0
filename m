Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96FEC5A1F
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646943684;
	h=To:Subject:From:Message-Id:Date;
	bh=Xp1FC6pzx4aOtGWO3r0EvZI+wvy4GkzaA+Z+K0VgLNk=;
	b=GueeKBeDjSStLKqlUmUpIuid4epiQ4e9lpMOfd6oLUDzRqgljgqfIEEZ4NCodBNw
	FtvPvZQWkbRcVUiS1/11qcIWVdRAUcfrCerSrR06RsPEoqk/ds4CWA65n8UKEjTIK/1
	XhOolqFR6IONjiMptPl72c3nrf0t8GcKzyvLmszY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646943684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xp1FC6pzx4aOtGWO3r0EvZI+wvy4GkzaA+Z+K0VgLNk=;
	b=FM8fp9bcxlv2qIdJv4aMqx0SiDloKiefCNAgMPx3rUpFOsMVDwoiubOnmEco77ts
	3gg0Pfs9Z/JXeEFo+M8tYwowIOjrcXy6h9MqLgsz4y9FZcRegstUuMPPWH5lwFFyjNI
	w/jQ4gyGVUxM4vaV2yYjj2NEGcE09O5Paq+KDb8c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f757e48a0-d5b13f65-6136-4ae1-afba-8c345cd9c098-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 853954d43b0e2beb9728ec5d9528ba2c1ca9b06923dc41a396ec190e8e113031
Date: Thu, 10 Mar 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646943684
