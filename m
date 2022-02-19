Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ADC955A7
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645297585;
	h=To:Subject:From:Message-Id:Date;
	bh=5crX8Bn9ecR8m1eIGqANyflDQv86ej1E4YpZTWs7U2s=;
	b=F1OqccoXtRIxhrSAH8VZyJ6xn4CBfVsJRKswYC6RuxE57Z2jTKMpEWLMPRawM/bv
	8Oyt0f89JJfoYmIPYtkvS1EaJ2UbPLRU9OSc2MRO2HPDINpczNhTPLCwxWNimmAwa45
	71D4T5Dbx8MUtYODqdvM3t9xLgivnITJ8Ho7SxoE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645297585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5crX8Bn9ecR8m1eIGqANyflDQv86ej1E4YpZTWs7U2s=;
	b=kuZvsRCCYAc06zcmjj3otj101enIFXe8IrBg9TMuoPaVIB8D/nmFa7GFkMlBm7M2
	NxfEoW3R33O0875iuCOIqT8LxK0qFfcQHi++b8f0gJt2EWSaQqNBeVNeF/cm9kIkqgj
	b7nUP0Ui1fIF7LXTVIeLdMI7D/OyLh3pmG9TX5Mg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1360cab1-b6f722d0-7372-4bc9-82cc-28e3a21a9b9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a7b76cc8ca48775703f59bf1e5c81f020da2dfc0092f7113cda94e047a4e370
Date: Sat, 19 Feb 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645297584
