Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08EBE10F3
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 03:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656647812;
	h=To:Subject:From:Message-Id:Date;
	bh=Qq8r4ZbPXqFOCTHcNuuDUYLGnbiFyV+V+OCIfO6F3h8=;
	b=kEuY7SU0BY0oiyoHnYcmKQmn6nl8RLradBzG8bF6rrK6vrFNmRkEzUmKwOKgwAzA
	FdUd8DddQ5GN6GqcMN8iJR7E9os28mWYQwADGDG+2W8s5VAeY93yhzhM8pOxb/33oGv
	nbfd7ww/aWV14kTyKEaAfrt+ij4Wr6hzdf6Wbmvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656647812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qq8r4ZbPXqFOCTHcNuuDUYLGnbiFyV+V+OCIfO6F3h8=;
	b=EcDigz+OOHQIlzWskWI+32Gak80KLUCVu+23o0j5xyNSykj/Jjp2FXAR9s+U0qgR
	g8eh1UgKfEbvcre6bxSguuKEcTphohMdzR3tkOCXFujl3oSrad4LpEskCxdQaTI50l+
	bpEnbd6B0+mNRkxfNnwm9vprzDUB7f2pig9KmJ5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b7e78497-a44d93a2-2221-453b-bf01-6f076974d7cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8d6d47c028ac1115ea2337c215f9a9f6f50794e5c5f5e5c6ad463b462f21036
Date: Fri, 1 Jul 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656647812
