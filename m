Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE0E15AA
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647585084;
	h=To:Subject:From:Message-Id:Date;
	bh=RhTbRzZSeGG26EM5EjEG3alJM0OqNmSXtJRfTEHd8B4=;
	b=dKZv+Wc/bxYqzg99x2GQh19ScoZbOYlK7OZVzTw4aS6zjS2aoOZRDlT+8wRs3IBJ
	Y1pxFEKaGndZVr1TSRMgk6X/4iS4ZNQ6WPvM9FjJMkOaHJeaizuhzmWxSCAx6zK0hVI
	hMrf3Dqd0mVPiXxVAYl4MfrMBHkFHFA19MDzdtIs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647585084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RhTbRzZSeGG26EM5EjEG3alJM0OqNmSXtJRfTEHd8B4=;
	b=BTpkZAvI6FkLMHd1hSFO0n5f5pZrpzDUN8gmtj3Lwp8fFjIVEZeIHQisXvu3nHBh
	/NAP73xKT5zgip/aYc8nP1trYM9SF4WKIID+MEuttabUvPPQiCWBp7iE4JeMYNwHG2X
	YcR6zZ6Esdy9PV5tKrHxOlEXV3CPvzFEcQC9ZzZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9bb94562-8af8b2c0-0f22-402e-a953-69876d659b68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14550b8c16a183c8ecc4db55c5f19c0a61b1b5e0f7802a4619b0948d697c6108
Date: Fri, 18 Mar 2022 06:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647585084
