Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548783201
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 14:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655474699;
	h=To:Subject:From:Message-Id:Date;
	bh=2ZEyWPELlu8LAX4FEeJjtsKBFn3OByRRZByOAu79CrQ=;
	b=G9RyIYHSTA3Mucr3gbUJfrOoiJSgVrI0biNn99gtYbC8OGIuFfVSzzWEJsR/xiPG
	PH2HQen37eMeKHskNXxUm/SBCHlfQ/80EcaJs2Ol+25Xr2fWX36EB1vBRglMRt9WNXx
	4lgS25R8gNt65fP+mpiLeElY3btHTBYhVxE0Gp1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655474699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2ZEyWPELlu8LAX4FEeJjtsKBFn3OByRRZByOAu79CrQ=;
	b=g7XOtNksAAn9/vJ9MVzxOpYTEVZ4V82Ydgd5cXh5YW4GFII1x4ym4jP9jll7OYjs
	PStaPcay5EJE9TUaugJoiAzfulJfoMplAyFLloZ2jcLdaU6GCwns804RVDiiajqKKBo
	vvPXkOVSPLs7va240CwbXC2xedM+y8Uenfafnb6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018171fb3c16-7502c239-8569-4b0b-a936-eb3852d59443-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba730512cace7d9bc231f7f2f088bc10f09f4495af5ad1213c96cbc1fa3bc615
Date: Fri, 17 Jun 2022 14:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655474699
