Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04AFA7A
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 00:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647996685;
	h=To:Subject:From:Message-Id:Date;
	bh=2nTnvXyqrpGY2MzXxqEvhCuZ7DibEtkvYqkqYJ8LbII=;
	b=lPdnZqcW3LDcGEHY7WEtlUkIOtUDK2Gdi2cc+59pUzKp4taI0WVVfQ+xzV9WltAu
	o8XPLzNjc44kM149L74kLfJe6VPgbHSFdr3zX04UO+uqMpjgVQwLNDGTwW1ScnjzUC/
	1Yz3I3uxMF0QjPXXok0Fgjly7tTKhHywy5NChZis=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647996685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2nTnvXyqrpGY2MzXxqEvhCuZ7DibEtkvYqkqYJ8LbII=;
	b=Y5cjrAPR92KR4ApGd4QEbmLIqt98Q5ABVU0KWUq64I9rdgv0ReGjN6bpjnrvdkY1
	/jTrqOugbPNfyfEK4cDk6+09rSia8nHbpgxLeHXpjsSMCDZutySTnhN6krXdb+0UKmI
	/as09jkRxEaF4vvYCJuqFb7/X4mH3dhl2l5p2NWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb441c9d8-3d925d36-e857-4e8d-a79f-c1e646ac84be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de85d32fa139b7477e0785e396bc84934d7ac0e857927627b5afe65367a4fe9b
Date: Wed, 23 Mar 2022 00:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647996684
