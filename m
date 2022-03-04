Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1F59C7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646408484;
	h=To:Subject:From:Message-Id:Date;
	bh=HOiJqVgnv34qzmpFhVhUOcKnf0p8J/RjfLHrhJhvcjI=;
	b=B38r69tK7XCZUKyNq83kO0ZdTkAfknbX4pfNR1paCxdoNu81hOrcBt5W1vTBRgBN
	FpLZRvM+N3vHjbrNiJbvEOs4jRG4J1/eWLE2riQR1YLat/zzGGnyAX2cs2Faya8HwcM
	sN+/gjF1AjFVtEcCrpsNaQJuaCSknG4ywGvQrelA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646408484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HOiJqVgnv34qzmpFhVhUOcKnf0p8J/RjfLHrhJhvcjI=;
	b=aj3CloGmYWgRNyPCjR4x6vKX2T2oeZ8Hf8KJz5nPMxVLliHdRIvoBlWwFwr6lJQd
	Lm/ACvmuG98lIqpC4efzquDewP/+8rbLf+xeeL8hQb1o0z0lVtxoLVsjL9nnZCDxv7i
	9DSKVh9mT7PDcGrCnmaVHTJAXLV3Gws9t7BJps2c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5597c78f-ce56619d-2270-4caf-b3cb-b7da7c8b7c3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce4d1c281f01397f7dbcf9150190ff43e74405f155014bc725dc851e14e9a1b4
Date: Fri, 4 Mar 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646408484
