Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7AE27C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646426785;
	h=To:Subject:From:Message-Id:Date;
	bh=5bGG+Ifd8w0uHiLXjPt+HVc8hneNeKP2jrwRvE+7WYM=;
	b=ema23YhCM3qMsixTpOh07R2QMg0sMtUbJ+L6hjnjdrb6K4T9Hba6Hr94nu71VoJE
	VI3uwfH4U2vUqlBzBF7aUwX7WQrble/n+u2bT2ecdvcVAxMdBwXq79cud2vFYi06XA8
	2lEFOApUinpzxpDzKdYPbWftv5tVlAGxE1db1g0c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646426785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5bGG+Ifd8w0uHiLXjPt+HVc8hneNeKP2jrwRvE+7WYM=;
	b=X2S0i+uGYWS35aXVMLLHK1MkWNidpKUfGt61F3yaCS38vS3Jp/TKLZUDHHqZYnlo
	EnLqRoRy783l2Eregjljmr0rJAEBNCesEubbhMH44Rhpw9PsTXyCEE09S5DF/fldp1q
	88vQ4Z9/l13LOa6MTMSj99CMWfwXVzfgBN16KvjE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f56af0416-d34bc092-62e5-455a-8c5d-76480f0ceaa9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb30a8dcb36d88a632da04ca9e1fe80cb5d524267e43c117d8b20e1cebb00e6b
Date: Fri, 4 Mar 2022 20:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646426784
