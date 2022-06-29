Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1FF3237
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656514612;
	h=To:Subject:From:Message-Id:Date;
	bh=6DxMVYT0aIcueq3y04yzrHsQypRo4b0DSgGP6lkvi2U=;
	b=Kd3KCJiSXUCIOMQB/OfP/x0r3IlkKubacq0O4BXWmX+sxjkolxSpxmfS3BXFsAaK
	U0sEGntY2iup/Cgas1uvL6xpQ60olBBiQS0MfmfV94Hipgejyc76OvhINg4fdpqw+zN
	cUaxwq6fq5D+H1Uv7Klb+o4yaXdJIXJxvonYhLG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656514612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6DxMVYT0aIcueq3y04yzrHsQypRo4b0DSgGP6lkvi2U=;
	b=MIdboxGn9hM+E8/d2nhTwg3lTSw6TkY+Q1BlREyHysoLvxzMSjMLU9vJVwGI9Ks/
	aj6X2rUnzH2tXmJhceJNe9PQR4SUUMGLTOlFNyPaZSqUL0lKHQBxDYFSE7dbKGDcdT9
	cUAksLZaystfxTWUBJadx3amP6u76IhGM3RqADkE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aff70c16-94b9f9fd-1f4a-4d40-9e63-882208c106ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e15d946fd087fbfc408c62564d5fb62549616a71f487fbc0a63d2a78938dfed
Date: Wed, 29 Jun 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656514612
