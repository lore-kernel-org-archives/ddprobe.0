Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326021874
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 20:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652820779;
	h=To:Subject:From:Message-Id:Date;
	bh=Zl770N2Zkkp76rUhc3Bp4hp5N+TgLtlQ8sReZe1ErNs=;
	b=NhQFwiBoe4Y02W47XkjhVc2V/Jk35AopTduzPwSB6HF4Txd9iB2NMp9Znu/WwEdC
	bjHJ4i6q4w+M10/5GHxkq+SeFFZ8aZu3uaLWbujGJUa/tjn1tMUzkTY6BrqtnGWTc6U
	Neu7C56RVolVVXYPMAjWEDxHkgU849Dy++fpBx4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652820779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zl770N2Zkkp76rUhc3Bp4hp5N+TgLtlQ8sReZe1ErNs=;
	b=hVjxS6eKMCq7/2GgfGGH49PaQvANWr5w+6DWC8NHjgmsl9eGGMSFkjF2YD9Jn7E/
	FvypveQ2l+nifrcp2KocUOivy8a9O1+YakT1+gwQjs2rte3B7YE0NosOWElfGadNlC1
	Yx2gjR0g6K4VhoDjXdXaxOPisUeaoLJejvlEukgc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d3cba118-cf6eca33-f20f-44b5-959e-38774b9782d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee9e2f1fe8995bede571db3f68db4f8d5f8e9f3b7106ca267130cfbbe191dc5b
Date: Tue, 17 May 2022 20:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652820779
