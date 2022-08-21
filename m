Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86698646
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661079652;
	h=To:Subject:From:Message-Id:Date;
	bh=ZqyLx5O+ks1n6ju+K5YaE60ZLDAGEGXtzouZbZetNPo=;
	b=dQeRFp0ZsmN5XxrcbPEZ0AYAR4DxgTBmVtQlO7c8ehddme5sObc15JG1VMszBYZY
	LzRqoIvE243lDW0WybCLUMTFcpMmrMTuRy2r4EsRsFb+zwwZtQ1LbZTyWVqxqVvSr9z
	+OHqIV80XV0Adq4dCUI69Bqqo/DMeAlzGPQxKgqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661079652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZqyLx5O+ks1n6ju+K5YaE60ZLDAGEGXtzouZbZetNPo=;
	b=dh44ukLcDdxBWCd9FXxCBIaEdQpaCrCDwHNaV475HDWSaglTV5F/9W0Psv+j3sOt
	NJuxR8+khbCqpUArQhueitf1DCAf34OzjyiOnRZgOgN95CzssbXsbjXevy0sBJsw2/F
	RYUU9J9NGsSzJrzEONRER5VtioCCtiTkX27s4NC8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c010089f-be92d9d7-f184-4b02-b6ea-e7889123fa6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38647abc2c2d12e2920291f858e2a5b1a69484ee5b1b017f131d70e1b763e48d
Date: Sun, 21 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661079652
