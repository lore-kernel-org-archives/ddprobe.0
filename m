Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FB933CB
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 21:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654550099;
	h=To:Subject:From:Message-Id:Date;
	bh=M1eJ5R20Zx6gxNqwkWXA+6QLMz6u4Utwz41ygLYGOu0=;
	b=JJlsNoUWaweHRXMTwYFSQsbOuW6Cqu0vIAjdi6kDnJ/5+JlBWunBKmjBU9X2k9IS
	+Jj4Oqllj3P+6qf9ios/FAo3L5pwQWunRp9X7+0wDG0XZaoOsCW0s794AZAdF3ngRuB
	ReFvij40S+OPuk7Gvd/D38sGocvuJIa5TAT293WU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654550099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M1eJ5R20Zx6gxNqwkWXA+6QLMz6u4Utwz41ygLYGOu0=;
	b=NBo0xkBt/RlDj8nnTsWoAZbp95KDBkua6Qwd9R/dFh/xbpp/30bB8zoSfrTtILXp
	29NqqX3/1BLVWbpYezQ7G8beu24ilpWPJBLIW2uRQvUNmHfcAjx9At5dKmaGc3gUtmb
	3SfFKsfzv/qpPNpWy4QSpr5wqz8LM0hWykBmAMRQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813adef56c-63369d2c-a91f-48bb-9e93-774a610cc1f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03b08a922e7d49ac5c84365357cf091ea7e9f28648260bad502f19a4f3755574
Date: Mon, 6 Jun 2022 21:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654550099
