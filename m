Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC8B10F1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 05:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655099339;
	h=To:Subject:From:Message-Id:Date;
	bh=T1oN56RanmuvZSF7QwZBZ2YQhyjdcR8o9BVnLyI+pjk=;
	b=KKlT8AgxpV5QkpmpBej7YW1WmciPAKE86mIBGIPRCO6j7rYy37WOBt9S/lbTw1jR
	2w7vSmnYLky3kXxghc7SNkFZL/TTYj/ZZZlze4PW8aAPhbNjlNX5DM4FeUVM1ER/rGE
	67OEfFSl7railKlL30xd2KZus7pJTwSmyPJQ2CbU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655099339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T1oN56RanmuvZSF7QwZBZ2YQhyjdcR8o9BVnLyI+pjk=;
	b=gfbW1YwPj+04jLYedI4wExnVRttqkQt9olkI3ylViPJY3vKbgB0Uy/vNpw9bHFua
	AtXQB+/aUW2+5trxCHrRL2TlWZi4Fb80BWVBD5Hpek77r/IJTMJFp9VvJmUlMV8FPOW
	1Q4FDARBQ/tGw3LukyTOORAGRO+y4KjS0/jUt6VI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815b9bb217-ecdee269-ee5a-4ccc-8163-8df0b6f4c9df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d3b11680e4ba0d4bac270516fd21a47d2dd5b056001d64445b7082efb064a51
Date: Mon, 13 Jun 2022 05:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655099339
