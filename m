Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52C51851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 06:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653634679;
	h=To:Subject:From:Message-Id:Date;
	bh=Rd2FxfVHzOCwfjSpRtZ3w5Q9sRnzgPy/yYUis+24+l0=;
	b=W1R+2ZN9Oa8wUWH2q4HOsv4f0ZMFtZhWjpsfDUEeWltn2XK4fLbVGwowOm+eJHTH
	jB3hT+vejH0L9/HVHyZvRJYIDhqXBrq0vHKVwIkgJtzl1zTsYscbM00K8m5cgdNv5lG
	Pw9D0jOkOFoCRTW4jfMfG7rikIkwrtUPug8Eb+Uc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653634679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rd2FxfVHzOCwfjSpRtZ3w5Q9sRnzgPy/yYUis+24+l0=;
	b=X3kMDxHv78xOB8rnyN4bVzEGN2wdOPmVTBOBXZVrfg3jYPw6epU0mfl34VzDKnxN
	Bf2CjkyOThX0KC/0fuCnhOp3cgXedposaKgRabROnQrdyDBx96bHapvTLLWOR3T9Ocu
	2zN91oWFIX5gqXI4078QlwdHQ6dG5SRPuzn72IOY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181044ec1c8-0964591e-fbb8-444c-ad8c-126f93a05b9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e925f8b4e98c1c603faf3f2906d8cce125d95f43371c3e55b3d40d782ff2ba8
Date: Fri, 27 May 2022 06:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653634679
