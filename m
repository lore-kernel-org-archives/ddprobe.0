Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24005A03
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646128885;
	h=To:Subject:From:Message-Id:Date;
	bh=yX6KC+IrsDSUGCMSCJnNGdc68C+Z9AU15inAKGbY74Y=;
	b=DbyKdFnBbK/YmY/6LI1JAkv6cabOFDf7weIBPy3ZxsK9ieiOWjM4726fvHnZ3dzu
	pf7266L0C+xCALpw6q4fs/5HbkTV21An3pj7kFG7FDi/PZSUscLHRI44E1R/mXW3VB+
	X633U9cWs8t6V1NUcLxmcKOwG8IqkpitVKBZ3i8E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646128885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yX6KC+IrsDSUGCMSCJnNGdc68C+Z9AU15inAKGbY74Y=;
	b=lMkKCnouJUDX1U70DDZJs/SWnXNVAdeq3kaKFmXhwRXO1ke/QFOe56BHxM4rH5n8
	Z+MnR1YYK5aABrzb9g2z2CuYD9NKOjRYAjGu0eMEYrZgknTFQoxFA/3HXDYjMQqsA+w
	qsXcz52eBrmn6NdEgF9ecQ/h7CD2Ouhg1iXtDXt0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f44ed6c51-d6edd7ad-ff4e-46c4-b142-21f798f059fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 346dd176633354e9f5571dcfd3a8faa7ffaf6ddeeeff12d21774218bbddb0071
Date: Tue, 1 Mar 2022 10:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646128884
