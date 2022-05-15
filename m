Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFBDA363
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 07:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652600219;
	h=To:Subject:From:Message-Id:Date;
	bh=cderkZ3O8M5QysHdmmp7J3aIn9oPO8rCZMED95xTsQU=;
	b=fyEucUL/KyoyuPW9Wu1CquPuF40oUsWu983XIhtKgIqsZTvTDFgIHaFUHg9eCG//
	PzNKyMZzahZXGOaFE6WdIxqPExHYp5rOQaM9SSjR/LDghy1x9HI/JUV4VXcjZOOvIlk
	+O7LQyORwZZKMLjE+TCys/bRSSH2W8wPsr00gTzc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652600219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cderkZ3O8M5QysHdmmp7J3aIn9oPO8rCZMED95xTsQU=;
	b=IA+0CQIOzIIzo+WpK8LEewqxcZoyDZEgYL/yo5keDHjPKdBKSbt5eHa7C2v7+5EY
	tAlWCBXsNhw9HdGFfF5KNVPuw2q7CwKMOjZG0UhFW+7JuD/IPHy6jO1wyYrrHbBlyXm
	ss4VYaEu2PzE7s1B3AR5Yb6Rgc3Iw86f66V3md9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c6a62680-881d6649-2de8-447d-9c82-a568a28df614-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0264b725b0790d7b1f37c37209c76c88b89ad7b7ff45912a99f216128ed96ac8
Date: Sun, 15 May 2022 07:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652600219
