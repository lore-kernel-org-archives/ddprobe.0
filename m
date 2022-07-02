Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195AF1FC5
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656772612;
	h=To:Subject:From:Message-Id:Date;
	bh=oWQUtqKOPGrY+RunI+kzUZ/4pYXZeNNL/a/MynqF18Y=;
	b=BViU8uLbxGS3PaP/68xkVhXD8AvVf/wnKhmeVo4IKh7Ax6u14KFcg2zQoKsCueuf
	oXaqgpwdbfqOmw3KOO976m4dyfpOA87lVJbjWWs2U/0gp2oTN5W3y0PFYEG2+dvl+zq
	rwUgQ81XwtU4xjLZlfi8Ao2MeU1uxiGO+qKCmrmY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656772612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oWQUtqKOPGrY+RunI+kzUZ/4pYXZeNNL/a/MynqF18Y=;
	b=HSrIosuOpsaSnJzgTY0WgReXGMI+cmiZ3VOyFrQmCr6En4Jf1rwfdxQQpalf4Pqp
	NhjihSlk0zVMJGXPaamQrx6C8NzbIEZzvH3ulfrxJxUpK8LeeN+blCJjwAXulv/U4o9
	3FrlSvqSrExFluPYmZR1harKnmVmxRoyB3GjztrI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bf57d0c6-9c22ec17-2cfd-478c-ae5c-2c88699a881f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d2fe8275613b623bd266f9587c3cdcddaa59e5731e403e6b079f3179040ac94
Date: Sat, 2 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656772612
