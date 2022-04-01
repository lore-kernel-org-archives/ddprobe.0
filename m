Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3E5ED5
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 09:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648803658;
	h=To:Subject:From:Message-Id:Date;
	bh=0TGhbhm1DWpO1wuecoY/l/A05O7pMwP0AEZzPBbJnKk=;
	b=hn/Hau9dD0n3UGGbRC06I2Ec9VWXYUKcKD9pPl4vm5pRIoko5wSwB0+x8ONqheOn
	juGnO9X3+i6+knl7Y1pttoUFb88gCVNBSSEQI4eD2ktNMWnlDO+gj2SWMekMMSOL5VD
	pnxme2WgXzKbzabMSvK5W4BTjosxHcUHnNtosNgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648803658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0TGhbhm1DWpO1wuecoY/l/A05O7pMwP0AEZzPBbJnKk=;
	b=Vs+Rs6UAq0Tec1gedw+UDsH7fzWyqnI21+MlTW+smwOzNuohX9Qdb+ry2ptsWebQ
	JSnMhrq3FfTKq/pwJjqUwW3d+O23f5K2lfqV/8Pz6BLY2OrxjW2h//NQRaHZ+gHtkXQ
	Z4ZgknWTcDGRZYxo4JwDnTPW7u/DcEkSAk+ArFeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe45b3a3c-b82f279e-e4f9-4a23-8f56-c892fbe2be80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e0af1a5621f1c254bc22342618987f8bcf129dd76de14ed4de0a694652b9802
Date: Fri, 1 Apr 2022 09:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648803658
