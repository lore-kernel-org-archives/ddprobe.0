Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 816607A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659047452;
	h=To:Subject:From:Message-Id:Date;
	bh=7IdZ88lOPoHQBEp+6t664nXZ4uhyiv7JSpFRbv7TAtE=;
	b=aukHXC5mb1CQvtWalAxr2QqonsE8K3ordNet1IO4UmJtGPAAabaRcxHwTMeVMerR
	GIgUifqlFJ+34eL0wPjRh3w9JMneXc4yN31S3ziExMCSrqKXvBQZOjuVTbGzVIeS9ae
	y3kxn5f7rOejfkYopIcbB0KwSIr4DUmjaOrtMxxg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659047452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7IdZ88lOPoHQBEp+6t664nXZ4uhyiv7JSpFRbv7TAtE=;
	b=kOWFM5YhpAK4oMSfadOeT2O5BxX3q5JXefhKX2Vr3Ql8zLxqYA57aXpaBoAd4LbJ
	f/YkQGQTmjsIhFeR7amUK9cGuBg/CdxvVjA+0BrPU+dCw9Izbvr8kj9Fh5RMqs6/nWK
	/2UVeLuSrn8GSz1mLtmRYyd/kQQ8jYz3MxrWgMt8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246ef1fc6-b43b01fa-2218-48a3-b901-210f66932fbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63359dc22d079bc65e543518a2f711aac2b13e582ba08d5a47322d78c2b47e75
Date: Thu, 28 Jul 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659047452
