Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52ED17B
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 00:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652918459;
	h=To:Subject:From:Message-Id:Date;
	bh=Pj5g9Y/lljTLlo1hz0bC76O1Hpp1gnNrQFXw3Xnbmts=;
	b=Dc1xr6ZKSQgSUA4xm7XC37ti8H4p0JAASRxEOti1GJWLZecrtyVoG40xgyI0pmh/
	XcjTR9qZiCK1iJGoYpJC8peRJlyEoK3wRcQKhNds6jK+P6ND1z/IwvhYk7OslzbWkvt
	ba4d1z2aQ1/ZLjJuTlPaa6fDtjvCqNx/deGsjSrA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652918459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pj5g9Y/lljTLlo1hz0bC76O1Hpp1gnNrQFXw3Xnbmts=;
	b=Tx2sHgPEcI0lM8EvWfz91OP0AsX30ypCJhN4L7vxSuM1EpwixAvN04KEpe0spLe3
	bn94bbNy5eqT4IvycpKE8fnvMEh9pU0IUrGs9a0mxHOKDM9Bdzd5Aow/FmJh+S2y7qA
	VR65aC3aQzMySbyDkuRVh2eJzLDwXqlUsEzPCwKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d99e1b5f-92b0156f-6847-4b96-b672-da3763361d5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3809d86f4e6639c15deb8983dbced3c1d89bfbe1735a0c0c75ac0dc11cf41319
Date: Thu, 19 May 2022 00:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652918459
