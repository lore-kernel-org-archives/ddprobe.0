Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09CCB6AAC
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646435785;
	h=To:Subject:From:Message-Id:Date;
	bh=xLE/3a1bEbzTD3gusvYnDRKFt/WlwkZaoiPTLnlgyho=;
	b=kVj2dP5TPJ0o7njxtfEayevDuFGjYGARTey0CHnF/WYrPWUFi5UUeCA2am8tr36e
	oJWEJAUBTELGbaYcLfqiGCUC+EjBBA3fJw9gNiLgD8uF76LYMPPGOpMg8gwvPGCJynL
	wPn9QoaiQG/ChujKbddPIc0kpI08D+XjYEpc4RkM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646435785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xLE/3a1bEbzTD3gusvYnDRKFt/WlwkZaoiPTLnlgyho=;
	b=Gmh1XHfQv4V3lYE5+Ly0y90caf2G13CpgcB+rsVgauKnfYlqZcJtYyjTi13NV7Os
	KBMG1/g4++Kf7uw3PDlGG784HHspBbVEPJ5AiuOMgZzoJ/sofaNEEnNFSC+tZknAkG0
	AskxBPVq0Pki+trr+0/AOrbHVopMdoQwHx2T4Ah4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f57385845-c49a2d0a-116e-49e0-ad4f-229559505c98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b475f16c2e82122f3bea71edf33938d7bb62ea9967084e4f1b7a97479613a365
Date: Fri, 4 Mar 2022 23:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646435784
