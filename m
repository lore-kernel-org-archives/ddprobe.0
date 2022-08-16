Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A973C33CC
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660644052;
	h=To:Subject:From:Message-Id:Date;
	bh=BN95YNtuaU+chgpEoCKhOV8+DWbQAwp3ef4Dk+WReXM=;
	b=diektK57C5hyBeLPGaIKDxtOwpDHfIaMeOX/g+Xpsbx25NDJF0zk/03sMKxY11A7
	3YGb+4Zs3MSXoLErTPbBGEdyoMokExwlEXsMZEoIuxKJigHWMEpK1EAjS6AGjETIDgd
	pHFD3xRM14Z2Rul3DaaswBFoWNGrTl0NEFzOxXC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660644052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BN95YNtuaU+chgpEoCKhOV8+DWbQAwp3ef4Dk+WReXM=;
	b=JeFSsjgGYAVxUujr/w5osyq/EUn9K59gY8nuZT1EDGTe8c1CCm9QSnpCfIDAT5dH
	sD27M7RgrI0POq9SSvnaMW+fRdAkMv41DTzU5QuMYMqqIKjWVRaB9wF2meVA6kmjmNM
	QjiigSmKLQi7IZcwX7JqtWNGz39ngEw8vPGfFbn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a6194e70-940c077b-5b16-42c9-a268-bd68c535e314-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 486b933ef50d30464895ae5c419b9f5b13eccab456855dcc4b08f84aec2c7a0f
Date: Tue, 16 Aug 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660644052
