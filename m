Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D497B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 02:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654656779;
	h=To:Subject:From:Message-Id:Date;
	bh=k/VHm+qh+W5g3acVrtbpbimkjF5CfIeTa93gruIX+ok=;
	b=gD7CNONTkueAsrR1cg8TlLnDBrGsF5GJR4bp1So7uexs4CgU/n+Htv5TubcDHGV7
	dGMuokEBQY41En8fPQcTIN61JhMN7I5ynPmD6uZH+soJ8dYdy+wxMVD1LvSfG3B/Awd
	f0AnR2p4eyJRdSD0hWXfr4hRwO0oymZ59UUU8icU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654656779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k/VHm+qh+W5g3acVrtbpbimkjF5CfIeTa93gruIX+ok=;
	b=QTPi53hG34W1Mw/FzRlYw+INFtejIGxkCttzSF75Gk0BtxMRPNLCA4E9xVGh4YUO
	0omfqciMZ7hlMzbNNbd51MbwccGaKi2x7cOM5PzOQotIN4eVrn1TYCHlBrrjXhmG9OY
	08+igKZaJxkUbTrwMtkeapi+bISu6xyav+8Bn1yE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181413ac3eb-792b6245-30ca-4b39-8770-45a51bff5383-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a5e54b88999320f836ca3fd8e6e114dabfe820ce6784657fcfd97887b351529
Date: Wed, 8 Jun 2022 02:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654656779
