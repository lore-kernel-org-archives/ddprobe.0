Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111A820FF
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 07:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648538878;
	h=To:Subject:From:Message-Id:Date;
	bh=D3rT2eb6zY41rpta3ZlrWevE+8xUM96zpj9cqQ65kpE=;
	b=LIsiXyklNKS0zPYOkca78aJX913Bom5zLQpM8oRmPqkJ3k185fYZTrE/jxW7M3Um
	buqK4sDmnZMtH2PBur1glPhrfN1U/FfdV1sjtZzG7P9AU2rkye1ksxd39SS5pPBrV5G
	ZDEUbcyqptjnNy+MHzNTHWJedd1PRcMH+mGr3ceg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648538878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D3rT2eb6zY41rpta3ZlrWevE+8xUM96zpj9cqQ65kpE=;
	b=RXEOnHuZ5wTEO18HZ7oEfUPL+kLzjj56KXd5tVZGnXRlPPbUn0+O2XQkqASPYZKy
	r2jmdtTCjeejD0OBx8S3du+OlDGQLhEFEU7lh9IDRrCr5E9UF9isJZU1i5E6IBurUUF
	wBuuowuVq9WOezuVc+HmCw8G5NqfdCg4XULEPSNg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd493013c-77803098-3865-4786-95e6-3586f25c43b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 629529c3549aa70afb7ed19e0ca64af6471d753519f32c59b586816774cb011b
Date: Tue, 29 Mar 2022 07:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648538878
