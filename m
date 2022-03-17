Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 939FA4A9F
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647550285;
	h=To:Subject:From:Message-Id:Date;
	bh=jBYt1lk3CRqZ3RihkOA2AaHZXimKFAZMnJvbHqsgccw=;
	b=f5gQ3xBRsSI2wH1sNcaePH2YY2oaHlxUO7kgVYQ4mNzhM0L1l+qWtBR0211RbxIt
	EDgCYn8KPtE4GAvaErMNmwgc1Ur4BVKraadl9xsRHwfzcwhNop6ZYIcVbGKQf74BavY
	cG6XQO90j4WPvUNPZ0Uvu0OZM7rE6/yVGu6Enhlw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647550285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jBYt1lk3CRqZ3RihkOA2AaHZXimKFAZMnJvbHqsgccw=;
	b=b6InSbgbM3rGOw6qbQ2iECaIZPEDnoi8aampNujwbXtXsBXfdXasbZ9EZSuYJEpf
	BrltO4lnwrXtjIGcbME0avdf5lOwmgU1V4jPDyYJMg5AdHC0NNW3ebBEEoYFI9ehiSj
	qXWD7J/NjBLVD1TQFon5YgOAGTsUmqgjEZFBYoxY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f99a643c8-bdf3f8bd-7a2e-40d7-a44c-b87fc0a50bd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddf5b00341ca9e518dab42624c09e6e5c47be64f0ca34d4cf355a7f141bbdd0a
Date: Thu, 17 Mar 2022 20:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647550284
