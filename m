Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B631853
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 11:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651318018;
	h=To:Subject:From:Message-Id:Date;
	bh=iRHV4jBqaPlnBiMWs61VG2g8k0AuuDIfRO4tDYQxd+E=;
	b=XQbkf4SYKAN8NM7qCUmSGuOZ9ZNrHHkSyDvZ8u+tK04lql5Kx8Kf3DXBJpjticIc
	0bieU/QRqVIGlolBuJGFnpyZ1qKcs9LoCZCiiPzbC6rlqAyRsEUCmX3kC06sN1k77oc
	zT7R7HdqbJMD8iFfEqLbGv87bRSImsUR83JH9z1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651318018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iRHV4jBqaPlnBiMWs61VG2g8k0AuuDIfRO4tDYQxd+E=;
	b=MxVW37DKUgZtzh1lQvyKMFOb8MYq0ocDobwIkQmNcNlyXk/QBtcZ5BxPd6J33fLm
	LJA4g1PLslm3ssGxmo3IX771y5anqxNvDIEQifiWz+mF+7QuJ+9oPRIfTWt3qFJ2i7b
	/rvcZM4Rek19VSac9V1y9K46/k9BiBAJewnaDHuc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807a395101-545e015c-8c3c-4c94-8c51-cc3410418033-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df6dbea45205071c3243a77870135f436c6e66c181a0343948d0a1ae4771cdb3
Date: Sat, 30 Apr 2022 11:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651318018
