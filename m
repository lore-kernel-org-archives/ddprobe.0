Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54716187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645022784;
	h=To:Subject:From:Message-Id:Date;
	bh=EK+oMoXWHBa2FIX+1cfKaj9oVB2r7QLUooVZRWsWmQw=;
	b=BVQyh8ywSfslJnJz1ueocGFEI1CBC6DE2TXTfZE+eTcSrmKdXYThH4InmdxqZvZx
	mAhKVPESOXFQlzQVQRDJV9EtOEGejxASsbL9HSZQ32GOPtLMA0K7s+BB+9PnUHXwneZ
	AXpiIqdylAiCw3gA1xUUkVxfErInFzd4+YkP8Ryg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645022784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EK+oMoXWHBa2FIX+1cfKaj9oVB2r7QLUooVZRWsWmQw=;
	b=VmI3vSu9PGKIy8gKILtb7KuxprS6dTxpGYlFYDnu03Yah4n796ysUt5AXrbJFyig
	SxTIRnhbLQITadL6FgUpAG/gr2OIOd+DDNx7I1Pg4cmTOBm8eHM7HXIgAAYLc92KBUU
	Ik3J7e4mTyV2zX5kkf/LbWrZL9ARXtuaeG+zklFY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02ffad00-44846808-e323-449e-94e4-2ce65fdbb5c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e9a2cae58d347c31bf7cdd1a778fef8b3fc4ba2a9bca88cb08ac573cec29ba7
Date: Wed, 16 Feb 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645022784
