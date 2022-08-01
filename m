Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A72FC7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659349253;
	h=To:Subject:From:Message-Id:Date;
	bh=ABlnP194mncwTwkHGAIkFjD0EdFdq08qPtT7opMx8TY=;
	b=IOcLA5fkBGIUwhB1uo4pqBQDxGjtH/w6zmY10NBn13og9SyU0cnG20VDK/Y9m1DW
	bZ9L/8p1UXnzgDTNU9ZoD4WsXZem3DVnw4TsEM/FXVFsnJIHpkMbq+N5uJcaNULS8bw
	ZndgUjI5OVOvaJiwcZLrnlouuDWTQ/pp4izP0WX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659349253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ABlnP194mncwTwkHGAIkFjD0EdFdq08qPtT7opMx8TY=;
	b=EpnD2V4EDDsu3y4EntTcVgLDlAGULC6lqXkeF83mjB5P8Ic/wxCpuEgS16SdEvOp
	gVULQkDqerB5hAdWTRDfWibCO3eaAE4bmtGrhu2rwtdf6z98LNTwCppTPGTLL2hYmMZ
	XwLdnBYX7LB9ELm9sjIrNdnEp8F2BDOU01BycAOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018258ec39cb-070a0f17-91d1-4380-9d12-62682891a203-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de3d798e357de7d8a6561f16fa37abb58c9a8564f0fc7b6d5445db467d7ce62c
Date: Mon, 1 Aug 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659349252
