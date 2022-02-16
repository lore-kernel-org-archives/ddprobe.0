Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28591844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644975085;
	h=To:Subject:From:Message-Id:Date;
	bh=0P4MAXEK/OaFDYHpv5i/KIltvZJ/Wmclfx6617y66Go=;
	b=J4XCr6/RhJNTlH43vB7a1jd0GFqU1F0aTJimHBmNVsC5jtSKiZ5yu8qDzqNtH+em
	RVVB/BFr2nOlouw9lMtM32P1tV1j09FPnONILWrfyMB3CzmYJ3ODqhD88ytYxjyS2gz
	bXpiPy1YhLJg+D+cWTiRMUEkyilxX0r/27PgP0aI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644975085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0P4MAXEK/OaFDYHpv5i/KIltvZJ/Wmclfx6617y66Go=;
	b=Cx++Ka5xuzvMSogWfqL7W5q8005iNe/5xS16fkBBMYKyEIvAWj8I8lE0fjo/God6
	9+572UcCvGN9Lh4ZSeaLGDQcgswLscqdzVPCnZxquI8MMl+2SGN7RgkCkIpJk12/wCx
	TPXGUP1k/QzWA+qXsXNdy4S4jp4OoJ9V3C7tHcLU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0027d4fc-45b8f6be-d787-4c6d-baaf-1275846c2344-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e73b921ddc088a41aeb8ee942c6a625337ab74543af69e3a549361f644417e3c
Date: Wed, 16 Feb 2022 01:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644975084
