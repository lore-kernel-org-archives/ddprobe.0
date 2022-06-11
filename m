Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0969A21
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 15:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654961639;
	h=To:Subject:From:Message-Id:Date;
	bh=EleorA4Qw8esMYloFOB2LqpEjQ0t1BJBHqF4JLS8mHg=;
	b=Ta38rZf05kLJygEWjE+RL+U/Am7Az/uCZ1B6f2jlg97/YqMOXRUeMekimSsO/6Wl
	Sb5Xue2LDf8O37mJ66GkQbt91L7eXYtBkgjUL1cdESZ49FZCocz5iIsFegUaRlI3KVs
	ZG+DSyzd/BdE542GBclz1IHx5UPJm6PpaaIUwfAk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654961639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EleorA4Qw8esMYloFOB2LqpEjQ0t1BJBHqF4JLS8mHg=;
	b=fmuVUOFvuXAEHU9/dNPf/ek8SYHuJyGced020SVFIB/UP35S3MA5OVCLtMejPFYa
	RxLTMVxNXDDKVo3Y4HksIprXEs7XvrgxMQia2iCKNMSgXvx4jI9Dv0vNpGE8F4H5g6L
	N2h6NeyMNyb4zcEMdcEXtIhYu/dsRVLa2dUorkVU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018153668f4a-6a336249-ed41-4689-9d54-398d4e47e056-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a19bc159c1c115ae09e6b002beb3f3236627b9151857050a44ce015d0b9fec22
Date: Sat, 11 Jun 2022 15:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654961639
