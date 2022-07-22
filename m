Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048B915A6
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 02:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658455612;
	h=To:Subject:From:Message-Id:Date;
	bh=jMvASsf1Z82zNVrmnL/Z6FzvosogCuhWtpMfuEw9H0g=;
	b=gqwHQ9Iz36EE24xjN/tiec5VFD6AxtWB8h3CGLcY/+7CKsnXuOz884XeMUsfXx5B
	AGHA66KQEDv4bBcpd7T8LGVsZrdTkUE+BAuz34LxdePUJoH9hJsWE80oArzBmS4TI2O
	5OEAs1B/22AEhrmi0U/VoY2TEW08+nocoNydHzus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658455612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jMvASsf1Z82zNVrmnL/Z6FzvosogCuhWtpMfuEw9H0g=;
	b=NAg6Egg+4pkFD/AyfQjFPpK1V+WbenKHBZyA8iRVbNJcDJCExBBGFcjHEG8LG9bm
	WB6rb9QMFu7D1/dSHi3r0sjW7MilufE7OpdN/66NCPafw/V+vE7ke1HvrL7DECjXbJD
	6f5+fg4PWrxPD0BSkUKVG4YUKJZv3cV2FcAf4hnM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018223a85b6a-204141fe-ce7a-4b09-ac67-f7e526679d92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e59eb7653269e55b0b0df549d691837874ea82817c5e2de93d79dd80b4a08b5b
Date: Fri, 22 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658455612
