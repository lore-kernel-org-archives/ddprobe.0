Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB240191
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 10:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651574458;
	h=To:Subject:From:Message-Id:Date;
	bh=HrPPYKphJ/fKVPa53hoRFRbaZn3mLU++Xt1ygpWjjvs=;
	b=A4HbRzvMdfuaOpHDdY8LOGGryrt1yKJz4Tv7XrqFbC/aXIblE9LOjjpLqqqRyLDT
	ACBwklWE+YAF3dqRaA5cezLPbsgwkqvfdV4PjAOQnsIHlpXnSdLB/+R2i1vDBUuTlkg
	LI+C/8Mxi7UCsPgmg8k5dS6Z7g3S5p2Eqnr7kdNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651574458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HrPPYKphJ/fKVPa53hoRFRbaZn3mLU++Xt1ygpWjjvs=;
	b=HYedm8ev0/+lB/h2p/EA6Jw5bzMdMiwVUPF8vIXKZAJ38tsV5TK1kiwsFSByn+Jh
	zls9vG/du93tB5v11xI7gd3TnIaT2DibPIWqQyLc9ksvHoN2+XpCb8VFu3Bebh3AQj3
	5Fm0Xt+pa2fZ/R/gnae9zuO0Ww+JIBJIz08vgd/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018089824770-9822c1bd-57b4-45a3-8511-ad7ea325236e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a282daf82c40fda423bbfbd0b93f677c8e320928c6c37dcecfcb1b2bf0d5f3f4
Date: Tue, 3 May 2022 10:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651574458
