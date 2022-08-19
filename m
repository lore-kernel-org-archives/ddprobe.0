Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652137B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660890052;
	h=To:Subject:From:Message-Id:Date;
	bh=Y33uR+YYhO7Hs1EjSfl0tAXytk8Jql2V89UL4lzFPiA=;
	b=koyM33dWwqjayZtV2Uq+RJDLyebarztBjLk2rP8ziYPuwWs3ks31Zm3epAsLOSNv
	7vElj5CtCTK0ellplH0CrUeGvSXl4il3GfL29vVab72bZHRe4IZ8RvmjyLa97wivjfi
	aonRLpB03Yjj+BqCflzIsUDHI7KFYeJCLCgwj0kE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660890052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y33uR+YYhO7Hs1EjSfl0tAXytk8Jql2V89UL4lzFPiA=;
	b=R7g/XL3TUMLl2rmHEJA7qoziIhXqOJli7xnFv/KxgqETZQuSvmvkrZaRBFYOAPPK
	1a/nANpYcynS/Y09mRpFCgObWPHravVqnCO4zAnO27RL9rHdrbCPoaD/Xby1SodqBvX
	r6la3r3bcoGeQGVZw5P138wpUM8V9b2a1qMpW1ZM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b4c2f7c2-2c296790-cd66-4ba6-92ef-392921343a72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75baf9e80200c4cc0bc0f81a53e7b5fd32e158c8173b70ec2acb2bdee2c87d82
Date: Fri, 19 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660890052
