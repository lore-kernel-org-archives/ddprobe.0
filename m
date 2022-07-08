Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037663D89
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 21:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657315612;
	h=To:Subject:From:Message-Id:Date;
	bh=bHWRKV3jFRrzL9DDwTdvtrEQpnNkgRLZBQi9k11QRpE=;
	b=DcSKgtfD03AwjkAxvcU1vRtyzzUQv1GuKdUiOcZ3X26S9Jt1Ut5wo3oB5mRX4Nqa
	i0Jyl4ZmUasSXciufBSCKns+XJG/pKApjBOB5xXmRuf+uYu27LwbHvlIEGJuwRhN/ua
	TvmUb2K7MTYbRTzLV+NIZzWeYm2ehulgKgNoWLVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657315612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bHWRKV3jFRrzL9DDwTdvtrEQpnNkgRLZBQi9k11QRpE=;
	b=NPFaTVZsX2Lyp0Fp3wbFgMcrOB+Mw0AFA+/xpnCh7IGHTxtaFzx4n19JyzXh+Qf3
	Rp45RQfhfv0WGouAx++O9X0AqEDm24iFAbf8vzzeXzLFgAi/nhIKVaGIgDz+hQaZseY
	FwQFwUzftF6OoS+G6rSPcYtwXmfE6FtBioWTj4fg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dfb55673-b6e4c5c2-883f-4182-9707-23a7c04c96cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f9829e5cfc5a7ed987647f8e1a7c51fde5422a2fb4c26bf37a88162a9bd0426
Date: Fri, 8 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657315612
