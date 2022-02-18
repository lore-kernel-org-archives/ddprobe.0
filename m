Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E139322D
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 06:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645165586;
	h=To:Subject:From:Message-Id:Date;
	bh=PuTJ0SSzcWngABvi+rlBWQtknVDBSXxbtLMeo5cqbwQ=;
	b=VWREDRSWNfPgur1yP0nU2gyDN2D+sNRW4Z+guvx9Sko2fKtvsfh3VA0WvZb1/HEv
	FfXcA4iwLPJ8a1DL39F2RpzOiN9HYIQG+MBliXg23UDxWv343YzZ7u8qPOhQh58Plgp
	LTa/T5qoKvStnHCsRHmb2tplp0lQJIqy/MqO2I98=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645165586;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PuTJ0SSzcWngABvi+rlBWQtknVDBSXxbtLMeo5cqbwQ=;
	b=GMYfCpyAwjYeKcsE+yluYDuyFwa19V9p/mJ9aooA6B7QvAqogmS0YPbntWlOm7Fc
	E98kmh4baU9m0+KiQ5+7mJtRvzFazSB04s5K3Zde6b15eMWpIhm8SG9zJMooImbB12B
	5uIcHTeybELg7KZKY2rSLJt89O9YRg2sQwoMzrYc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b82a156-4dd15549-1e55-4c83-ad5e-c51be41486e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4abe28d4221a6c6f2f3aa8380a0d5fe78c865c8188689ae87405baf28f16bdc8
Date: Fri, 18 Feb 2022 06:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645165584
