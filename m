Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF452ED2
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647283284;
	h=To:Subject:From:Message-Id:Date;
	bh=M5NK29/NI9B/kMy3A5VGK631ogyE65Xyu8Ptbj2p4aw=;
	b=KP218u2ejQO0KC38VMqPAQqtAuf6Irxce8+6I2h7p/iql55RxyTXle3TxCMBA0jR
	NCD3kM6XocR7vR8ZiIZ0IQ7cg9XxMKsG6sJ2jXE3BoQssIwyH6LylP4dzAf5Yc1nXwH
	JlgFVUu7jjk5RCGd3UO15v5iSxvpW9xdZvyO2FT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647283284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M5NK29/NI9B/kMy3A5VGK631ogyE65Xyu8Ptbj2p4aw=;
	b=EpAXWEYVRAVW1sqw+IA0MMbPGEc/pony0Zd8GvgirJ7Y3d4Epz9jyFEGhfVWtD46
	slXc76g8tWIJHqM60zRon1UPZb2sZPW7yFJms5FMKeSBvZWbwtIVjOydEA4b0stHnm5
	RuGoAovQTVKhwS7kEkN98fsNQFBv+bhu+YMQStp0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f89bc2b23-1e60aafd-5684-4d52-a0c4-f1f84ca86e80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ea612eea3bda126ee8d4be7ee93943350aa17d47c1527715f6c964cfa53783b
Date: Mon, 14 Mar 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647283284
