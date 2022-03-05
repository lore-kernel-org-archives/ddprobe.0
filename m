Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875E57E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646479584;
	h=To:Subject:From:Message-Id:Date;
	bh=lxuwHw4NZzPUOHUBJQzugTXIPKazEOwI3jMPBm/IBL0=;
	b=ZXC7kA79HtfmsopZ/yKGLu8rBo6A+Lbp9zo/QJWQl5DbbCCuXq2ZdyhAcuO2yAzb
	X5nDUc+eG6pZSGoInqA/qK46pjSwiAgPbhtpoOPsvLU5uzmMT3FFJ51Kh+d8kZ5v1fF
	ihslZs93JXgtHRYVU9RCmUNCk1gNWcv1OuPL8odU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646479584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lxuwHw4NZzPUOHUBJQzugTXIPKazEOwI3jMPBm/IBL0=;
	b=YDNBkKLuqu34TNabyGEJtoJnydlmiDVS9g3CedRrk0G25zDMEJ+ea5aQQ1T0NHdt
	6Y6qaeap6AZq0EZe1EEL1iTHn18aKmoHnXIyVExk5SQM2ct4VemC+hqL3Q4cqIVQqK3
	T/AEWc/4TWdZKXXh87uCcE2eNav09/wMVCoG6eBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f59d4add8-e31bc3de-82ca-4dd2-96ab-d33fc3f62d3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d16cd045c8bcbcaba8f2ac9f8a91dfa35ccc07dcfe4d395491ace9e77a34f5c6
Date: Sat, 5 Mar 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646479584
