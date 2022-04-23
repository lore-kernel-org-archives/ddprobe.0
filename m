Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0967C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 13:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650721378;
	h=To:Subject:From:Message-Id:Date;
	bh=qz0Vo78mgfffTMJQZyshfkk1VabwndbnJ8y3gOuSHgs=;
	b=FiRDkVmTGrWjOLQhRm3GaJr9D4bdzWPiQSQSaQVArCsuBIHnR7tgxPiw1Y6X/dXa
	HnOteXyPwP/4Ip9Xpc9EFKEbNE8ORDujiPLiNDgzWTZZWbA+woD0D/Fm0ZEnY30iOPU
	dH/FbXBB+1mbPVCkM6VZmtWAYNBZ5aWvJ2/+SLB4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650721378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qz0Vo78mgfffTMJQZyshfkk1VabwndbnJ8y3gOuSHgs=;
	b=Awc6XR9Svwi2tLz2rUH6uQs/hoirJX4BHYjCiBPwU2qo47ilad+fAJWCTBWau2TQ
	xJeuGdDsJGqe4J2H0xvD4g6gc6q7LP18w6lF660DzheaoB509d5HMDUTKshW3lCD8By
	tWtrQ/jfH92kiutMjzMckOa1+6sBTX9F2Blo6o4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018056a94ff3-4245aecd-74d7-4009-b417-0f45312e9a79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6ebc3140a1b203298221d8fd5416f625d0e5af727d832aa4f02f13bdb83aec9
Date: Sat, 23 Apr 2022 13:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650721378
