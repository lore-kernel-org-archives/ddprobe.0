Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 829AF7E3
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647192985;
	h=To:Subject:From:Message-Id:Date;
	bh=7zGyCWABudaQyAGGOLTDKKD6+5ai7NaidMrnrbS9E6Q=;
	b=im5mQVjOB+8Q9CLmB11awbWbV0pKWLd8dYP77Tr/6U5m+N1lEARS2KAUpAYfDPff
	F5stgoOscTPUJmDWLvUkttABMpv026O77SS2UpzVOq5gaPOMQAMPztZVJdjQJ0BBiSl
	nimAU7yE7mRU6HqwsktEeTCE/EOk/UWVPTtmCZSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647192985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7zGyCWABudaQyAGGOLTDKKD6+5ai7NaidMrnrbS9E6Q=;
	b=QJxmqZzEtaOKM4xlbIGxPO3AeUDfaZ0dVoDAt+k83dBrVTblGk5DCWME+oIz5LUX
	NYpSgJbaw7zrZNoTOgydCX3T+qM/PIiWZJyxQ8o/a3AONFWL3J51GkBOujSy8hrsyZl
	B/2wWqo8LXPhZP42DU2aCPkMTjDxwT2DkQP1RttU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f845a4cba-ec914a6f-3012-496f-8f0a-bf9885503baf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 518941b7e8dc93c868c73cc90296ed7d4bb6faea65d3c8514cf523c94046d3ba
Date: Sun, 13 Mar 2022 17:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647192984
