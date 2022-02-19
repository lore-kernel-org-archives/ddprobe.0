Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186BE5585
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645295485;
	h=To:Subject:From:Message-Id:Date;
	bh=yEP0mAWWDA4V6GhxkDpTrSMUxfmqh/y9hzb928xN9rY=;
	b=N9Odt5+xeB5SIBLxg2yx107Y9+3pIPzjRc8cEK3z6+cvn6vq8JKAvEH9UAMPj6XO
	bCupHjBY0FLK7kErGDjekZUsHaJ5+5rOePLe8fB6RZzkG7ENbh5mhTlpgVzimd2OXeF
	VxktLO1v23+IRXGEoxsAA3CINg97K21ZXJIQy3oU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645295485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yEP0mAWWDA4V6GhxkDpTrSMUxfmqh/y9hzb928xN9rY=;
	b=jyjckMtYqCeFZuFjW8av1xms68HSvW0pXSP4m59VDUlkpiUEHwV6ZxcF1Kmuc4jw
	9VJyw4pjS4wjivYC0s/RKw33vlleQ0unT+78JgiDY0D+rxN3OVeP+Gix8iRooZSk5Gj
	8+5pVshA2fNQGv0QrMWI8KfsGLTw0LeiR8sNYujA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1340bffd-44eb30cc-21fe-4a7b-95b1-4f1dc60c3c0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 454b4eb59b03e904029ddbaf8df0c32019f8c10aeb39b2b969d0a5f46966cbd2
Date: Sat, 19 Feb 2022 18:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645295484
