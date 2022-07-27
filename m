Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A5C7EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658886052;
	h=To:Subject:From:Message-Id:Date;
	bh=5oUgQ4M1reCKp4HknHJ3x3s+Hn2mFmRQTbiBYV0y58A=;
	b=RbhZTrV2EoEv2sT73R6d4zk0o0uP2Kwg66mTMkc//V4c2/AmQMB0vwSCrc9Az62s
	koXIbTphXmqKBBWqgPSJZFoOWDMWl1vFxJEV3sZ4tc6hV52Ut0D9a6W8H2wsGLt1EPS
	HJZwQVF8LlP3M0plLmPvRT1ZZznUo56h8GlZ+Dc8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658886052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5oUgQ4M1reCKp4HknHJ3x3s+Hn2mFmRQTbiBYV0y58A=;
	b=GSN1xV32WYGOzWX/2Z0Zkc9GixrYibLzD2LCiT+u8YbOZdFfvJBSAFPdufaRL2s9
	S3vVvKSXDITV+deSXDC9X3FGhHETOOGRCN4dbk0tK/CNyx44JsmSYjezHgriZ8hplxP
	1HkjGa/0p9QnomjzOH/ulDtaPyFrmgaSiNrUao+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823d505aa8-468e6895-97ac-449d-a887-ed32c7e3f55a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f19a5990c22a6037ec46883753edb8143eee3bf0d6f6ef5791254b74459eddd
Date: Wed, 27 Jul 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658886052
