Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E30E928EB
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 13:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656076012;
	h=To:Subject:From:Message-Id:Date;
	bh=cT9QUL8wm8+5Yn3hxVIMMLwfY1G7jxHkXWElNrCrTOg=;
	b=YPLBY7Z7n5fyjQ0IZgk6QX5sfBiNg4nPzENDFPE4HyXh3am343nRPhVPbU05ExXF
	qWUZLZkysgDDgYiU7o+tPUhVd/rR7M3Bzo398CKDZF9QFmhOckmQm5eAhO7hBPrmFcx
	chDAoU+6127mD8mfN+/GMfPB6cJawsSo2stqbJ+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656076012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cT9QUL8wm8+5Yn3hxVIMMLwfY1G7jxHkXWElNrCrTOg=;
	b=SQlS11dwbaqz2rcScy2f57Y/7flIh8Hs4oA7dHbs4p6bEnsFyx5tpwqNfEsOCtzY
	xtxxUU5CtBCVXjkY7nRaKET6cURqHwiK4j5fNqjy3dd3v2lL8XOQ4uHYWSewUyPc70M
	7t3lV3/lgXCbju5WiHvUUDSM1M8eTStKdO12e55M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018195d28ade-58fa0049-9823-4ef8-8e5e-bd4d6ac02bff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99278586fd3e725712f39ecb2e6ab161a6f830d236ed867445afc3deb5577782
Date: Fri, 24 Jun 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656076012
