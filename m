Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6BE33EB
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647009384;
	h=To:Subject:From:Message-Id:Date;
	bh=sLqEmOXuv87570V+CCBfPa86bb//uH6YrO4Pbhsf7Uk=;
	b=XDoc/LovoXrBWPH5iPUXtnv7V9uhFv+3mjeCG3Bl9g7llhSCyUxqDodEKRMdVc5y
	kkF6k0ZnRlWmNiMV9eqgnueTLLwjc8I7v4UWH9TPB8vMhP3QBLGGrEbAwFz1gNI4nR5
	PROyjZzfv5wVt+3r9bde8xMnihrGUuVSC5jFJh3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647009384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sLqEmOXuv87570V+CCBfPa86bb//uH6YrO4Pbhsf7Uk=;
	b=FZDCI/b1W80T8o2GQ9bl4YeYFVFlSAQUDUz7KkRddUQmo7gZl6uHygem8nUCDxZE
	gciFmM8xqP7EiJUjZzwvJyK1BUD1j55onRIifBo4G8AoJITMB637HxSwKK5d3KiKMrB
	5bCi66mZh16+VloWSgMVI+p57H/5ejkJH5yDmjtc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7968c91d-58d0291f-d996-41ee-be08-1099f6514983-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3eef797373f37b8ee6ce05679037a60cc2122d49a82f6b7249d020d443f856e
Date: Fri, 11 Mar 2022 14:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647009384
