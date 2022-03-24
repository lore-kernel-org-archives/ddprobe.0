Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6597A
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 02:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648087918;
	h=To:Subject:From:Message-Id:Date;
	bh=qGSGKLaBRJWBYWsvrlobyf3mgnkZczbPwClC9k5+qBE=;
	b=SAGhsARKysFAHNJZ8jBMtYEmQDErgnI3eyuBRVu0Q3o0TgSmzRiKGRwA2oRVNqXm
	DudQuDdFVyKCOyIBR6J9fgohKRDmvsGOJ7yLh8WEP2Yt5BX/FFhNUyotfmzcsxKwdcy
	XzJPNj9oTVD2TttVmufN1bItml7ZwhnMLoVimpCI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648087918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qGSGKLaBRJWBYWsvrlobyf3mgnkZczbPwClC9k5+qBE=;
	b=jApl07A3ro0RMCEGxQwk4OVRC4uNLdFlBC2zPZG9TZADnX77ApUZdUMvdycgEhWr
	gCjLRQtUbY3c/w80iottZEEzrV2o6hPokL+1QpB/PKJgB8IplIPxp0XHYw9GUkh2Lax
	rTmtJ2wT7K+5syH8unwsfzFNHmlrxU6DsK9XNYrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb9b1e6c6-812e0fd5-413c-405d-abfa-3f50705f632d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f852115da8e942ba679783b3d3b8ac7b2dff71972278641e8c78760ff683eb3f
Date: Thu, 24 Mar 2022 02:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648087918
