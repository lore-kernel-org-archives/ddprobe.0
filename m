Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228F57B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 10:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654683239;
	h=To:Subject:From:Message-Id:Date;
	bh=+cV0Zr/6gELgADuHHZtW0SXrMXsmSvAiUBceKIiJQK8=;
	b=IPOASm/bphI+Qd0FsVYZVTIY7DNlcZr3hBSvLu9pBI9z91WsWvifZkahE0I8l/AA
	PBGNCq0iDvdxSpTNx0KRloezV5CCVog8L2K56Qsm7UvUmGLcvvqf039TWx8a/2/Bzp3
	ji3cpkUuM2iomBKEvnoj1k5PpVWh7IqPHyqCigHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654683239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+cV0Zr/6gELgADuHHZtW0SXrMXsmSvAiUBceKIiJQK8=;
	b=DyF7f24csOTcomzOe4eew4XiIbljaAOaMZYsB+T0MfQoT/gPZPROzaW8Zi9zXVgr
	b0ilGfs5/7HWdmLeJhdRXLY20N4V1rO6xSmk9YoUB4OFglrUtDIWla9Db63v8NIxX/7
	sO5hhVFwvNBUbo3Bn7CbfMbdgSeLSiZAukPRP8do=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018142ce834c-e779b40f-2811-4056-9e5e-ca9164a888d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2981e7dce4a46f4de360ffc35d0c67ccc1ba8b78924a4f06b8541ec9bb61302a
Date: Wed, 8 Jun 2022 10:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654683239
