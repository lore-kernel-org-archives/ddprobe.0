Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC2D7C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659937252;
	h=To:Subject:From:Message-Id:Date;
	bh=+E+0A1p0zqhUlenAFM5/hcAzNF3l+8nPHeHFDSXaGso=;
	b=QxaI8jARZmKzHLPjM/JmDeDRVwOEoVOm5zDqnFqr1mX2cw0eWh46L7pywRD492aS
	8aSmx6rvGcGSye2pcngZBDXdT8SGxXigv6xQ+S0CDjruDtF/XVoJGAit6JTS4nicmo+
	zyiBrIkrKjr/L17+AeAQUKfjJuYfQqfA2N0bHxVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659937252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+E+0A1p0zqhUlenAFM5/hcAzNF3l+8nPHeHFDSXaGso=;
	b=abLuiiCx3aVeP2OfXmeXphJTTC+s85DbZnMStg/A1tkDQyVtTeqK0/8x426MKDHb
	mGZetts8vdGevWhC1kl0+rbqJHlpDD6HR2wz+HoYFDp9MgNvUrd7G4MK54bqPe6Avun
	m8N42WOy/4mnDtq0CmI4zv0OGEN89eDbycYyUiGk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827bf864dc-fbdfa227-305d-4810-9d1b-f07f3afc6ef3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba28deef3585ed112be6b6c442b64d97cde4d494770fbb9593c178a04c3d4cd2
Date: Mon, 8 Aug 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659937252
