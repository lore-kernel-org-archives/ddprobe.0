Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6378F7A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659884452;
	h=To:Subject:From:Message-Id:Date;
	bh=k5R8LwEylFcB7FIp5bDLuREWLdwOPK/lkzKRj5TJx1k=;
	b=Q7RFKqpi3PfU6NmQBrK6eH9hQ7/NIg0YcIaJSeDoC+WWB76sHqApyfbG9jA6X+p+
	3zRrQK6JoNYMX0/245y+fxCDIO6YYel8avxrVFqa1sb8QgWpzCkHvBaFWd11feODaYy
	1KSPGR1eiXRXI0H36vSllPEc+7eFMHZr2EMjrlTY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659884452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k5R8LwEylFcB7FIp5bDLuREWLdwOPK/lkzKRj5TJx1k=;
	b=SzoSQPG9D0NktivsSve332JL0SOAmE9xoUJMOwJ/VmTVuKywIBIlYGv7ZqfftI0b
	IAZzaYTIg5RDPrA0pjZnlkWR9JSrhnrCqnngxUMuWYpa+b1oJGxDRaTRWCPzW0wJS06
	8NPgkcK6RgSyhfCrrenH26TuTJ4dwvW228zTX0bc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018278d2bae4-ff655fc7-3a5b-4ab0-8131-22c2f76bd43e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 228d4ffa8386a1f7877704c4cea9df84213a7700adc3a554a3eb2a21aa70bc83
Date: Sun, 7 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659884452
