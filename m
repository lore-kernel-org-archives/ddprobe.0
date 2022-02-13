Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD3B373
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 16:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644768631;
	h=To:Subject:From:Message-Id:Date;
	bh=tD3Nw6H1ac1Z4E94grd3eUl3caLkEumSaBiizI7fpo0=;
	b=admwu5isqDuMOVxVcsOT+3hpEvnITw2Pg83XfrLihtfMOmq7eOew9pNeVxE1LRhi
	1yMy21jlbC2L1I2Gvf5AFCNR8um4fugxzUupWxa5qY0PKxXcT3XqgYIKKbIP6qS0MrR
	dzJCFKv4J1voxppvnyjLwFjlIpig2je6RnWIsy1k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644768631;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tD3Nw6H1ac1Z4E94grd3eUl3caLkEumSaBiizI7fpo0=;
	b=RjsN20wKxLDW0Ia5hSfldMrOxqFnqIzTwlGbu81ZWb0IM8z3oFWC4iGMuqGutp6z
	VlrHo1J+ZuZLp9U1obZfluyh6bWS7e8WHGmkUCZCdy+OTIXBOsbQLLj7TW3AYdhmLBY
	zFwKrDR9JRq05W97BrXsw4A7I+PyCCv/GQOUXm1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef3d9987d-3edfd847-96c5-4d18-bc3f-988d9eaba7bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f033882dc0772fa44320fcb632994792c6e3bdbfefe07f41f37c6a2b7f1b7230
Date: Sun, 13 Feb 2022 16:10:31 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644768630
