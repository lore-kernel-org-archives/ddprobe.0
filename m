Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B4133F7
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659898252;
	h=To:Subject:From:Message-Id:Date;
	bh=MV3NfsqvR7A8XT3QJRPJ1V+FGglFmI5k32iLG/WjtIs=;
	b=Lbw/IeOfnfWZ+JN2j6OMqPSQllefJRdCxjYfRqaOsdaQ3HvR7I9HV90xbXUG00GO
	68rbjzCPSU6LY0zdkF+qJzEmuO28d9+iNRKAYJZ4TuVzYM+94hKNKg6t4FwBxq25Q8O
	OWUDnz6wVn4SZ3lfbbex2cvoSMK5Xb8LZg2mpnbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659898252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MV3NfsqvR7A8XT3QJRPJ1V+FGglFmI5k32iLG/WjtIs=;
	b=dbyNJklbVZJ4F2ym2V7LSyirwyg9oH3/lBdgpOY5NdPSONgcCOUHeJ0gWyf/1fMu
	8IutHVAv5JdYAyXTnJxipTnG9rEeX4AppP9Rq9Fr+g3OoIK2lSDtxm+ECL6i1AXF6aq
	TXemtF9mgaxNjg5Y4diP9z+P+P97OOybov1VXRVY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018279a54ce2-70b7dd55-07f5-4d01-a92f-cbfbe2cc7786-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eebdb5f6a74984a82ea6cb9cf66bfd7031bdfbeff0bbf85b12f5c6dfa77dd1a5
Date: Sun, 7 Aug 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659898252
