Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660534A03
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660335652;
	h=To:Subject:From:Message-Id:Date;
	bh=ydw0UDpQny1ED3KsqgEsv5XwUr7MiXS4GSUh5eTHfOU=;
	b=SV69p1Or8azduu6ykUrxEv++tb0IYCitZjQ62WQOdM51jmWcwfVXexD/BXGBAqtq
	bOOXfRq41POZPcANBDhH8hzEZnhUXXOQQTpqnypBaQeHv9LJGNBwDK9hQWeyF0NVEZM
	ehOX65d/ETw9NkRu2jR2vKN+xg9FChN77/02cBRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660335652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ydw0UDpQny1ED3KsqgEsv5XwUr7MiXS4GSUh5eTHfOU=;
	b=UGpM9YFwxvTAQBHh3MLGI32v2+vCoYo1ltDovnscVe1f+/KDMpweIWEJdSYR6CKL
	Gy/0iOfdutNrDpbD0dmS6m/Zn7u1Svy7kg0ONnAoTnkSb2+Ds2pGGSXZftndjn4SEDs
	p59QZiRFuG6xT83q5l++5mlwjbsHSqh9y9NRGg+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018293b77f0f-c138eec0-9350-4f50-9983-3121967623cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 920684a44c9d0a991bf195f96573c722ea0c02362905660de436090dfcbf9619
Date: Fri, 12 Aug 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660335652
