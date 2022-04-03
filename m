Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0493E186A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 00:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648946098;
	h=To:Subject:From:Message-Id:Date;
	bh=+gA8M+HNSZtFYL82NqWZs3TqnWOjVaZGwWmbepWEPsQ=;
	b=D5Ewh5OmyAHB0R8shWXtMZShBSm8BEX3FhdhEhgU/zIWrBW5I90ozIYc88eGCEAb
	5sMOTbmFUVySULTWJNs3Q6ae6MBQWNqF9Mxf+PLD+/kHs3LaKJ1pDE4O7kDssoMXHd5
	UNUBS7s40rOXv5hpZ7WE3TS5sd8Ev+Xm51hZVtTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648946098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+gA8M+HNSZtFYL82NqWZs3TqnWOjVaZGwWmbepWEPsQ=;
	b=V9GVcC2JaSKa4C+FvGMbH2KYBku4vK1ZoJsbiHCBlWG+CacjZFb1WVTRuJm/Nkkh
	Ob9qk9roXN+wvR9kH30Av/eSLXUZaVoLoNnd3v/GlDVRs5xRNrZImgroy5tfQE8fTbs
	lZCVFVDyacWPTkp1ERDhzP8Dqtmm3Ql/yAkUnHYo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fecd8b0c8-6546ba23-a8ab-4fe5-afa5-9636cf879cd6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ad00827d1d667c651ad9bbda4bc176b1c5572d085a9ea3d0c73a879c1e144b0
Date: Sun, 3 Apr 2022 00:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648946098
