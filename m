Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8194B4AA8
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646758884;
	h=To:Subject:From:Message-Id:Date;
	bh=eaSlTgkX8HaJiXyh5FmkcMS9w96uhcqkzSZSN6WPxZY=;
	b=HtwhlWAtR/ceBac4keMq9YjTqiP4oHgWZ2q1m/3ouMLW2jPdpEUDOBA/5vISQJVG
	8rUC9D2cnCinQsLpoxWmGsicWBTtpCcDVbxVBm/bJPqMW9pJ0FIqdgeYRwsPKUgGCGe
	N8BrXbhi8RYZK0C1gcZIA++S0h8qL17nmxo37SPE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646758884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eaSlTgkX8HaJiXyh5FmkcMS9w96uhcqkzSZSN6WPxZY=;
	b=ddndUiEYMnLfcm5xb7BaaQEAHnt6ajyvn2+42TB81+SkkKagYJhR1E/YK5HqnVvX
	bnyVzK5yymtQZPy6n762jBuOQscQ/WJ+qiKZYU1kkoDMX5l9ihv8Of4F+mahVIfx9wt
	21mPbrnvHH1k40mODeBF9agnCKpHoksdDAYSGNcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6a7a755f-1103fc84-dcab-4ccc-86b9-c79323653b15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b89dec979b4fdd2e6e89a3454a983ac85bd5b2ebae5deaa84745ca07c81bd0a9
Date: Tue, 8 Mar 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646758884
