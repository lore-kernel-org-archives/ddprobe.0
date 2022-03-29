Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A2E20FF
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 07:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648540138;
	h=To:Subject:From:Message-Id:Date;
	bh=NTwD3aFRRtAUjaBlXaOL9+Mzm13xTAX5/ahKOJRoQKQ=;
	b=abGZT69IMHP3YxXh3pFWYe6s/zaI89phlXe0YO3oGwKosurxBJaDJVpM0slglC3b
	5OhfhbMAqMoKVpuCDRBVRfVwoPZ3kFR30qSv5F+4S0n4vCJ45tNO95nawOFRVwLClM0
	taxTdnwXVMs/aBXMqG+GkCCvKv18nVlylRJ/b2Fs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648540138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NTwD3aFRRtAUjaBlXaOL9+Mzm13xTAX5/ahKOJRoQKQ=;
	b=Xn6fO0ZoaeNk84IqRuUz3D40saeqaOHlpyE+6IdnFTDpsguNLAlL0Afqlo1aDICd
	JKJx8VytPrv4+KJjwMZBhB/eHaMpbc0TWBCTSKVw304uHpI3JoIjaH7iQQo6IuLjxVx
	Uz6zFgDpztKScuzfnTCUJrN4OmpXpOkMqG5EF5xs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd4a63b1f-2f1d806b-f259-4072-ae3d-fbdd6ea7f3a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0334c11713c1a76281c8cafd3f309f3589a1b9bde64d17757af69815a56f8a6d
Date: Tue, 29 Mar 2022 07:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648540138
