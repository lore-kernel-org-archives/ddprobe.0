Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2DFA2569
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645462585;
	h=To:Subject:From:Message-Id:Date;
	bh=+8eLjuQn9dcl7j3U2CSVjzD8ncicYoHqpiXotZj0v8Y=;
	b=KNaXCJ7kV2dkFvMA4DKsVER75vsJTYX3tEj5cjlu8FBhH6OluYK1E+SScRQXEdip
	YE4m+phJzXnBVQSBYNltnxsSNQwL1RpKQ0F1LQekvh7CteMJ3plUhpvFG7xj7TzMPWd
	0LTDPSrdR/4m0GxrQEhrXlR52YfNsmoH1z25ZJb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645462585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+8eLjuQn9dcl7j3U2CSVjzD8ncicYoHqpiXotZj0v8Y=;
	b=JpFOTIKDe52+sezTYDB64yOH1qDPQ8o3tNrb56Y/6Ct7xv5umXYEM9qfteF6SESQ
	gvj/wkWciUWBWbjGnDJEZ+KALQgvoGENWoSVPMGUv5t+xqPVm7Y9o8s3vfBv3RbnM2J
	Yh4sAivSchQLCYjnA7R7nwuJLqOkVljBA8PqG9FE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d367dd9-c4cf36d4-08a8-4e86-a2c8-f038b90e735d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e9c5b4d785d2d96e20f26c06fb57107c8ade5c118811866672f1aed1a7822b7
Date: Mon, 21 Feb 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645462584
