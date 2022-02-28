Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1DD5382
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646082985;
	h=To:Subject:From:Message-Id:Date;
	bh=X4y6rgNydcLWUsLO006smS4M5NBQQgTulCeUIZ6BKfc=;
	b=CObbOV/u4GLAf4vYHD3CI/OZcv13/o42ZB/oiw7egyXaPogtw7n/ALTd9Lgcgp2g
	G4fT4uf8oIziG/Y1XHdeGmRfLPsQFfYspPDWh/J1pxvnXvVymNfoQwIQOxKHn58kJgh
	xJhM1qzDDlz2USm+Nl2v3hcYy64ORY1El8f/NdFo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646082985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X4y6rgNydcLWUsLO006smS4M5NBQQgTulCeUIZ6BKfc=;
	b=No1dsqjDAfeG40PzKlzyL2wDqP/4aUYhlEbNKhwhkknbcghm6zP+bkyHgVTrVFh2
	mNjPl/LD1fiC1PFb+AxkdVaVuVt4+/qLJbaUUBPxPhVYCeeOKw70HE5H9YRiBqncFLq
	9OvWYgbcD7WDc5IGnp0FXhdaNL7so7Lj8OPLODeg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f42310b0c-237ca632-ca8d-4d43-8ced-d784985d825e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f32e3619f0e248e44aee58f186403c48a3c5520717c9aa8c8b5bb02443112502
Date: Mon, 28 Feb 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646082984
