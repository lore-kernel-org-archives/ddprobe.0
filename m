Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563F155AE
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645299385;
	h=To:Subject:From:Message-Id:Date;
	bh=vtvmbgeDaXiVOx/GegtotsouAIYktj2+QsuON43SaF0=;
	b=O/LapVeI2cULKljif685SHGSvYCwk0LlWvtvA8eZgSbWPAcAjJp9r3Iu6L9kg+2k
	ihq1lCT478kUn5PBk+U8K7g17bUPxR/zToR4kjG/HaoTeO+cU7Mca4YSjRS0BDldKYN
	cSJtnVWJetx6VrtdCvNVviLVYSMyGG7rs+aFsBD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645299385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vtvmbgeDaXiVOx/GegtotsouAIYktj2+QsuON43SaF0=;
	b=j0nzrGr+PV3x9ccHSRlyddWYEBv6lK7/IayYQo0EFfxJUnAOE5kJAK8+1+xDOkmr
	j9h9S+HU1oSvjV8CaUCWZlcSgMQJQSPrk0hD4fKeejC26Oo+WqiCHHKxd8fUHGCu4Ty
	REzJXFcTQXNiYijGiQ8LiCWi8BD4F0D2EWyaDE5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f137c41e7-c0f7c819-abc9-4fd9-bfc8-a3eb3ffbb4fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab44e2870bc337e1609138156ebb5f6607cd1b59ec9861a6c2ef325c96793ad3
Date: Sat, 19 Feb 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645299384
