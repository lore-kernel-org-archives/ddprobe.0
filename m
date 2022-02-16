Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AAAF3678
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 18:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645036585;
	h=To:Subject:From:Message-Id:Date;
	bh=nFV0cyPmE9pK2dvr2cSBgD0BQtapNInjEhCbiTdaLVs=;
	b=c5Od+TC1i9BL54kNF0xGmFltlKDR+a0Ch84IRjTKClBslRKUpNdJlOfrPiiiRxT3
	xXto9V6P3SXXNgVz+3kqbsSvPiG8egbtj9R8DVwosta+HfSfA6o8mTjxBgOr3Au8sts
	vTCccs3ULqGfhLkg9SckHlj4CHHMZFFpw9TecvMo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645036585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nFV0cyPmE9pK2dvr2cSBgD0BQtapNInjEhCbiTdaLVs=;
	b=QhIJ+7h1E7xnsxAuTmqc9n4Tt4zLs0lOVCygQQcDB1pUItBjhgyAf6fI5N0+Vtjx
	HZcpG0SR6/Ncgid9DJzgh9aTEPlA8gMP3Aury8BHNQlqAwssvC07IElo3qahd8A+tm0
	ej/oUlrVn5GL2koxM5n3CS3VeaBmq7bpg7Wa4oSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f03d23f63-e80e5f5d-d71e-4c0f-8c2e-fbc6c11bf802-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5e5e2ea086703cf3d1bb16f13b20d40fecdfb9a8b378c6f052385aaf99f3fff
Date: Wed, 16 Feb 2022 18:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645036584
