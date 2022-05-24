Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B42F628
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 04:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653366539;
	h=To:Subject:From:Message-Id:Date;
	bh=BHh5lj/ZoZBeZJlc/raVFaxJoZ+gPTIahi8sneneTWY=;
	b=jbJXCRd4CZEl/Rxx5AmdqugHIthTn9SeNwy464j18CC1LImoQOccZlizjHJhPC76
	Ky1r1CrLbgpv/dn4DFuMXk4YUCLALByk3Osrhq1LMMPwCOy/GXEUlb2RhDvQ+amEqCj
	y5Po2QtQHU06LzzoZWxFZOtnyQS3t3EKS1cblFjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653366539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BHh5lj/ZoZBeZJlc/raVFaxJoZ+gPTIahi8sneneTWY=;
	b=DECI0YMuUwIy5dk5co85FSJYyy8oCx1pAR19zlvWxy9imw11jKPieXeHw/SvVlRh
	N+1ren0vww7AcNDLMB1nOlkyi6pICBCgaq6ZfB7w/Z1/Qtg6XUW5nbk9Gfjeyefajpi
	24spkCZTHJN7qC+l9h4c1pG/R0NxyV3JCDmy5Wug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f453442f-7e627433-4f71-4e9e-8a61-5dc3dca00242-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2d62259a9d60b52a15ee390dd0128e3bb058fd4868537b91c9630cf5bfa663c
Date: Tue, 24 May 2022 04:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653366539
