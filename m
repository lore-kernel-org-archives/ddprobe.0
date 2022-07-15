Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F642F31
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 13:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657891612;
	h=To:Subject:From:Message-Id:Date;
	bh=fhiaQ4sPp9XA1WbJmNluS3v2SpoUE7fH032+0O2f4Ik=;
	b=EdLKw0Wd1yWEqVR933t69pC2PbrGFgQ2k+qXIfrjOzD1XLdsJwnFxwF9cm6X8Qdk
	ZHux7eY590zSGxHr4Wr6ly6c/5GyPbAm2vr4CBtR0ILJMEeVPoQzcIeXBIQ6yxzKhKV
	rXEsPUf8v+28qXa+GYyNCkT0ARAqqeuNbwgYdU8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657891612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fhiaQ4sPp9XA1WbJmNluS3v2SpoUE7fH032+0O2f4Ik=;
	b=K6ezSKVTQVEUbxyElvTNAXKIsWVOH56m6qFVdYF9m2XuFFzOSJ1o4Idf0yhwOn/K
	MfNQYeTX+iiT5/A+TCTK5kP0ccSHONFq6WJBu/6BqjZf8NL92//beX3rgg/Ckw5Cy8A
	c43SbIhmZf/1cRatZHvmgSwCJzhMDD5P5Oq722zc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182020a668a-5ef52d42-9459-41d4-97fe-35aa3e3c77d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6171345d0014bd481723751baa26ba5765f9a4d801151c069323c55b1ae0f407
Date: Fri, 15 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657891612
