Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40985107
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646853085;
	h=To:Subject:From:Message-Id:Date;
	bh=Fs4a0SocobyDUolVSEk1a7EBMirhK0akG1263wSnGGw=;
	b=G4wR5nFXZaxjJM39ebh0KdvGf+fGA4dOhLDLUVJd9/0n10PhSzSfiXQs3pyWTsEU
	7GZ838eiv8nf+fTZlp5s9WanhN9tg+vwJIAzHegdoJFZTsqFiqHL7S8ndm4iW0haxqn
	RPtGjXESOYer85kiZV4LwLBT7ltHcwY+jM+Mk+YY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646853085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fs4a0SocobyDUolVSEk1a7EBMirhK0akG1263wSnGGw=;
	b=VLzMebRQSYCCmVfwtHctm5aUoBE9gZEKOOq9DlXJIcacXkbql8QaHZ8+MY9q2+pE
	DoCNjlFOHpuE67ej/3pCeKrYwv7JZGPS5ZZCPe+SdmgO3Cu4mELrZaj1So8Y3x+fynE
	s9VrPMzx0BEDvn+kkenw3lSZxEdTvsQYzgqOucqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7017d6b5-e0fe38c9-2835-437b-8e72-f3d5280caa8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58c06d8bc6afe2aa463c7ae68e2747362b077e58809225e2ffd1edc188cf8c55
Date: Wed, 9 Mar 2022 19:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646853084
