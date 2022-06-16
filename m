Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2537A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 10:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655375459;
	h=To:Subject:From:Message-Id:Date;
	bh=gZDsDG7uSaoqGk6ZFoQqJKZT08fkildc5hCs74rRnmk=;
	b=IRdYYiZODjFMQaY9mSAlNUHITBnTs38Ax0SCJ2x1O/4vxwKm/ASLN99g+oNAe8h5
	cHr5efy0lIcoS1YKG823eskYuUj1isk1C1e/4+2DfgrcvwvpCkHt7rLATUgWOpIpsMl
	mI6jKiJnuQDm5f3hU8iFbMblEewr2t2Pwty+N5Dw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655375459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gZDsDG7uSaoqGk6ZFoQqJKZT08fkildc5hCs74rRnmk=;
	b=JFdr5wfMeJS1TlTm5nFD84CcD2ZimXYjRYO7FL8bppb5IloDlUGuOw0QiBmZ+8ih
	QBV7huQdWI7mf8SvGSZITSv5eywGTtQjjjdaCM/C3JR6Qczz1aB0ARF2jIBdvIRcqXG
	7SC/7ApCKXHM0Fc1LOQRscmTZJUHJWP7O4+9xXwk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816c10f3bf-7ac24226-ae61-4f6b-9e94-c788a7a74b15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85b78b2d21fc90276883494671b005252e0eb50879ed0aab22a64e1f90a35a0a
Date: Thu, 16 Jun 2022 10:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655375459
