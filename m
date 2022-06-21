Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1447EA32
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 05:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655789399;
	h=To:Subject:From:Message-Id:Date;
	bh=w2thWLXihsW7+J+ASVj286Ki488IJddv7buMAzyI6W0=;
	b=QdgXG8eARSMgwg1gTtWgM6vOaMB2OazkRuFX3W7A4vA8s4Oz/Bosynwg/liE9JlG
	GTaQ7lT6WIk3qqV34Vv7++5TIzPPXjNRcXO0BKpmSpSDu0Jku9U0Lw8kGA34mqWIUuj
	zC26bED13fjJKRi8fI4WstRBf6LrruLzv3OwU0QQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655789399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w2thWLXihsW7+J+ASVj286Ki488IJddv7buMAzyI6W0=;
	b=KUUVGDM1l4x81gJPU4z8nqg7zqFLq3amy7dgetHo6RdYtGDxXqjjFj4YWBG6IWOa
	5nnrJ7rWuEpQt45Zp82aAvaHHQD55Sy69kwLXUe1EXEoOchnwcA1v8a79koO1azwZ0o
	G/8XmwS/k1HaxDbIpGr3dzCeRWktAl1vOSXxbrVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018184bd2ce0-87e7364b-1165-4dc1-b5c9-137613c850b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 451124c8f4404dbd79546e398fb936f52c9c9b5983dee10f78793fa420fa6551
Date: Tue, 21 Jun 2022 05:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655789399
