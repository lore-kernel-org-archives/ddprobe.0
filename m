Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE0AA4C
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 21:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648762798;
	h=To:Subject:From:Message-Id:Date;
	bh=Wq/b5ELGTGkaTDn17fjm2fOTGL+32vyTgJb87Rkz4/U=;
	b=OAhu8pY5fCv3YoVsUNuROltkY3qZQbuBFxNUJOwnKaTyY3eZXN7bPaaa/NL/vSOg
	ckn6mKh/+KnQNWXg5NCC4Dg1SKV+QPNJcNo/jzKOzC5w8JZN3f3Gmw/4Q1uI6d1D96T
	9SvBP5W/HAk4K09JyC8g5oARmds5sAmf3WzLfvXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648762798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wq/b5ELGTGkaTDn17fjm2fOTGL+32vyTgJb87Rkz4/U=;
	b=e92PeU9ZAsKLYYy1GUSCl/Kv/v7s+im4sPjOlIzOySYIRacna3GUyEQYwHB3Sv2M
	uk4NLyDc45nCcpp5bTZDk0snxh39niaHnXROJkGLMcXmGtyfLJq8FhG04HXLPTNsncz
	Ok6XtRdF3OJlDYYiAKF1Dmryn02yX4oQOj2JEOaw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe1ebc0c1-5caab5a4-6753-4056-aa7a-65c56709b3f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa45fb329eb3f9f23c44ed9aca562caf7bbe97fd010b1aff73776a2d0ab66098
Date: Thu, 31 Mar 2022 21:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648762798
