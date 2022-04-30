Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271AD2F24
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 23:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651360378;
	h=To:Subject:From:Message-Id:Date;
	bh=dtroAc2Vj6yfNae46olR8kFdFauUjrthAjUqEd4ZeKc=;
	b=ZS1aazamUzGKJQRifWI+0mouOyh6DFbdVIRQK+LFWW9F65jvI22eM5ukv9SkgtXK
	xXiNfy0MPbYXGs0ESqXRkRBPCbdzuGywLBPT7uSCixx9jhj61kHvt2dMLbxXK9VckaK
	TiPxgkEpVmffice8WcLlEXrWtlO0c898HBi5yhYo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651360378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dtroAc2Vj6yfNae46olR8kFdFauUjrthAjUqEd4ZeKc=;
	b=BS3A8b65F/CaVOSNioX4IKpPQ0+0y25s5/TfGacXsgc7J8wmoEzH1bc/l51EyHsj
	z8fhuqJzXrdG1o3Fjm/eQotQqZL05+qx73Qsi54dv3Pa5PuJDyWV/qrVG7cOiX2GZ/B
	jPthxM+uGQm4mOVvd7Ot1U3kFDQPUxY/tTkiyxjM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807cbfada7-b93a4c51-2a07-437b-a4e9-2532288fb316-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cccfe43946a46bcd53cd124140110226a0994f6befaa493ce9e48d87c4e2700
Date: Sat, 30 Apr 2022 23:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651360378
