Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2543E7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 14:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648479298;
	h=To:Subject:From:Message-Id:Date;
	bh=s7EBsriGt/r8odVprY4xQqejrXNtwe3d/C3cf/0jQ1c=;
	b=iOwZZBPmQi2g8kxmuj5Vr+MByb4+7TTS47XKl80+ICdeJdjIydmw6oR1mRwyeJmi
	vlDJDaPN9pqRYNo6buORX9j4oeiBqyvEfAA0ZOsns8yK19AhuIvQvJ2OwheiNVf7fHx
	h/YyycSaUY4ggdvuHTOX1WsHOisg8EE/ynbFffLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648479298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s7EBsriGt/r8odVprY4xQqejrXNtwe3d/C3cf/0jQ1c=;
	b=WSJHyygHkg6Iu15noiWQ64l8ZJx5cb1nc84GeOLUJDuUc0JafLLCcIvBGusZYif6
	HHAVSJbJP8Ywnf1fa53bAsFDDxKMDRmp2rZvT4ix7ntJUSUNKWVAdDmwx5A0Toio441
	e+orsEfvLxO3GheJVVWAphcqWwT+GBirrxPGVBFY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd105e2d4-ae6f4432-d0ef-4b7a-9d9f-58f2c1d9264c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5001da179fdd2c279417833229b4db5f4cc427644c487c562197bed1a69627c1
Date: Mon, 28 Mar 2022 14:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648479298
