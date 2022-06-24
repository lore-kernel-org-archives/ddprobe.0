Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF9246AA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656104212;
	h=To:Subject:From:Message-Id:Date;
	bh=QPzJNzbQaDvLX/6FG0lWlY5XsB2rFkAn0cIX+qCbcnU=;
	b=IrRN9wIL/sEStKIJVnOejgwA4yGMepXOlXpzHNkitKNI9o83Lhr+qXS3S0k74kpm
	SSHvINp/DCbC96AwZaOPqfdQ0IiLLaiK8qsy5OlRAqPwgvF49WHlMUEjiSHstAIV4QT
	Zmwua+xkTKsNnqONNKIk3N+b60kQcmJywidONYz0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656104212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QPzJNzbQaDvLX/6FG0lWlY5XsB2rFkAn0cIX+qCbcnU=;
	b=ZnB48vSaQuWqQkHyDOdFvtw5L6iPFVR07Idhy1cjUopWCEzxoFi4gV4xwMMfs1Tb
	vkIEbCvZGoGDesdObshIfS/TNnbi/wo2lc0y2aaThbiRBKht6i4p/aS7XlN14KAAg30
	6vgAo90pdWVxiXOfMbtLKTthUWHzT37p971yRsBQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819780d758-637442c1-8955-4af2-a9f7-a33d751dd854-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23c17cf7a9610c4beaa1155996dbb27c9e4aa7fffb94affd2d65bfc846d86342
Date: Fri, 24 Jun 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656104212
