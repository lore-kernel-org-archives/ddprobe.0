Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBAD84F51
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645240884;
	h=To:Subject:From:Message-Id:Date;
	bh=hNMHISx0Zn8Ei/B/cG6pclUQ+sei4trC5uVUJFWnFQk=;
	b=PL9ursRJF/DrfJr2+LlmnGLpK+vRtVyvSQVv5H8fkUbUiA8qoxnWqhkq6telcNm5
	vjjoVj3hVjVByXPirMdoaU6ztjQDcaZkGk25AcoAmmX9IM5hRPJAfYgUmB16mwa5XdA
	GV6xds5gbcH6ajKvLgfCFkHALfU9bM1feuj0v868=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645240884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hNMHISx0Zn8Ei/B/cG6pclUQ+sei4trC5uVUJFWnFQk=;
	b=jCOsyyaO9v4FW+GHxwPI5YL10h7pCFsczn/aLmFoxIQ57tRd3XRmNHrFzlH+4eDB
	akVptOime3OI/NhZafjgCElaSxCE3DWKmMYqiaG1l0rfzotl7G47OpFkYcnIJi+sjgZ
	RheS+31CzjV9xz/66xfL/vKpc72xYnfOJS62rwyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0fff9e7b-9d304545-fe38-419e-b570-a2a255e4710c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31ce6b1bc0048aabc24e41d8992261f47b2e1ebf1435f59f6b915b0377167c38
Date: Sat, 19 Feb 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645240884
