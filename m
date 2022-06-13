Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0998C7A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 22:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655157959;
	h=To:Subject:From:Message-Id:Date;
	bh=70Fo85u3J/07t6VzxZqHgEjOmy2xgvaH8yhp6NaIlZQ=;
	b=Hy01lIMChHK4biq2rALLSGAIL5vztWihtLpv1pMpXJ1wlAU0uz5oPCDZVVffKJXJ
	viTVJGuANnVwuheGzIJ1GBvg9W7Cy1464Nf2aIW9iIidGvDcSU2ot2Na7s+QNuMFhX/
	X53gJWhkIP1d//gsN9XYrC9xVggJVsnIUM1WNrqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655157959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=70Fo85u3J/07t6VzxZqHgEjOmy2xgvaH8yhp6NaIlZQ=;
	b=PkBdzxWEGgZwOIQnxtRg/Ec9tZNyISuB79rCphSy7U5BBg9RH5isGOd4kh9jhHwL
	SEFmRf99+ENLjmrizvrBu+R1n0zdZeExP+NlY1eDctfamHJOKlczRFlazN+Fk/Nj91j
	KPG1x4AUGEJTn4PTusF+Q34/fuqHxkrFnlHeEwCs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815f1a2a6a-e8c0047e-9f2d-4dac-a4d8-e360de756b90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fce3d1fd68904808a1a8d2a0747ac4d2147bd1a96d4de768f14ebda4eefc8fa1
Date: Mon, 13 Jun 2022 22:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655157959
