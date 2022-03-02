Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7792576
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 07:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646206285;
	h=To:Subject:From:Message-Id:Date;
	bh=9bU2vUItlLsa2G6nUfEnwoyTlr8BvsqbYOEWHqX8QdY=;
	b=Z/+0BLMfiWoSvmmbDgDYf9WomvW/ox8VeUQjKUIGIHqDzY/fYzuzfdMsi+8td6FB
	o8blDNyscVijvNgGSWkiEvRSzybPc28542kBDSaQ7L0WD9lUGTK1D5Nb3ujRzKn6v4w
	xbjIG0mavC5OxTJyBKrTd+0iIyHMTMIXEoA0qCgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646206285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9bU2vUItlLsa2G6nUfEnwoyTlr8BvsqbYOEWHqX8QdY=;
	b=GFn3kyEo/6zsV5lQY44SfuvNqtwnKT47HAh6jHCWrwKMtODPO15+fW0/DKJGCB7l
	ZsZdf2QO/S8sGaBQVew8qwj1hHzBMP/nXekT4o78Y+09CrHLaJ855wHN5/VagQbRfQu
	mJtYjJMKKYFoUvucd+vDmfcYAI4O/Zkt3Llcr4Uw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f498a73ea-c1f5fa67-c57e-4453-8117-cf8b9744f98b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6ee85ab425a8a02192d21a1b18acc8397b8cfb71b7e0e3ec8d656be709aa03d
Date: Wed, 2 Mar 2022 07:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646206284
