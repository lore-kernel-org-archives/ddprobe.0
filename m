Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523DA29AC
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660513252;
	h=To:Subject:From:Message-Id:Date;
	bh=sJv2JKDOgAQyfNvMyxCIdMplsFJBSgdvXqOaHmksQh4=;
	b=cTLX8fJYeKZ1Ra7BM2sPMIK1hU+avyRiaKCXNlWja8WmPcxb8NTZLBfeeU0kbDhs
	6e9KRbYlr5LOyZb9Y3n8kJZUNzWY+YJRqq3haBMhmABvtNYlAl6tQ/piMhJTMxsGFNI
	Tc+31Bjocefa6sr9Uw4HxwxwJNWqV8e6QmB3UqWg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660513252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sJv2JKDOgAQyfNvMyxCIdMplsFJBSgdvXqOaHmksQh4=;
	b=BqOnoq9UL67qcFkPACYapwMWEMcLKUTf3Tu4FTICIBc/ioDnpVdrI4FaN4eVG8vq
	8tULzwsrppbwmGfsNH0ED3DFI95BearF2R+WyXfaRxtMiyGMb5TTfr3d4l9o9JsyL6R
	NoMA0mqZ7mncE9bOv0bhjgsfFn+ciCLACfE0Q7ag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829e4d7504-a659c355-bb26-4bff-ba37-b6064b1775cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac3b0cfde1b0f39f7c2bdddfbdc68505202521cd80d46314c114fdaa0ff9643e
Date: Sun, 14 Aug 2022 21:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660513252
