Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E09E468E
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 02:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651285138;
	h=To:Subject:From:Message-Id:Date;
	bh=mbBX7gxgadcJL1xEWF8BWdWAfTxDGmXVtzsnncTxde0=;
	b=MB7tGu0bJ4n99FQELBT/MR231Nw+oROt04qDA6NrNfQMsHlzc3a+Q7CVRvxcFNMb
	DPwueAdAcmmYZXgsEa/T8w8mCu3gd06GXuW/Nhl/Fs7ANS5WwWpbnbdFQR/iJWNs/UN
	GUBaqWnX715V++eWAKxr0FWXap0mbxNZw/MSQLI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651285138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mbBX7gxgadcJL1xEWF8BWdWAfTxDGmXVtzsnncTxde0=;
	b=U0jjMIji+FZPWNE6ufpbLEV7NBWltEkDXy1EBrA7kfTfTtiIADnTO+6fo8JX5YUu
	iARfnNY8qd4PNnjX+PFOzGGZwLiZZbhbsRnHJ5hRMQqPNPFKVS/GvtP9/4xqoOs9T41
	Y/k26UnPmWyWkdNSQwvTSOu/WsoU0wOslSybuhts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018078439b48-f31d2055-b1b0-400b-868b-12c5576fb4f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96437d428f9c688dc5dc553c340ac44b914443b95d993477856fd43b6d0c56f7
Date: Sat, 30 Apr 2022 02:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651285138
