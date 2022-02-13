Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1017F7A
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 17:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644773440;
	h=To:Subject:From:Message-Id:Date;
	bh=/U4aO/FeGIxhkne5nhPiCbOG56qjnGJh88SrGrOM2SI=;
	b=Kaq7yDtRb+sDydw8LWWLmxJ6l7/CJbdopFI9j3UtY2ICHZTF8uqoQBZ5w6/fHAr9
	Ab2u/3dR0M4e0h8SGRQb0H01emVHUnFwLADNM/0hyE4JrhzE+4oY6gM582RckcSRbcK
	SpV+kbAI8BGFswIwieQoXw8tePfpPy6AIiEY0ZNU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644773440;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/U4aO/FeGIxhkne5nhPiCbOG56qjnGJh88SrGrOM2SI=;
	b=g6qZvA8wnfPqmhJI84SmFZjBVWSS9b81SOQsv2yKRqoZqTncHC3UUWC9X6b+UYJg
	BFkaXDcGtiS24uJFGLwDhpgs3Iez+rPw/mFF5x8E7t2BeTSdVKh4WRX2X0UGQj9Msmw
	0TfRvtGRtiWtr2nFZDiqHBh2l8E9DE9eM/GB4Y6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef422fbb3-b6d4c83c-8100-4360-ae46-f7bdd743464c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e86a72a0cbd3f2d7bd5e57fbd293252132b386929f1a34579f74f8fdce7a0119
Date: Sun, 13 Feb 2022 17:30:40 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644773440
