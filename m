Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3D67F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 14:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651932118;
	h=To:Subject:From:Message-Id:Date;
	bh=/8Za+KtgRgSQXXZQumPGFebOc7n6TqJeaz5TrPUe+ck=;
	b=NHcUJSq8l4Opo5FfXFgiThDWtyv/QcUjLqRxsnuI5/MjKzbz3VeMdEFisZE9/uCo
	2UIquQ2Oa0vzbLg5Jnovg6Yz89hNZ7dFEEfreq1OqDBzSyfbK9ezyhq0D7Gxakz/ESn
	DJy4Nqr4d9XeVfynpChoQG7/UQlF9cEnjFqpRkl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651932118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/8Za+KtgRgSQXXZQumPGFebOc7n6TqJeaz5TrPUe+ck=;
	b=kCiLVGbEz5I5Xu0WtMLgK5Zv8gaD9W+UAH16a1JyKj2f4lIczsZazoB+onv4MPv1
	GLlwkMmf4/EaXqctBcHlX3WBxyX+1Y1ZXP1Us6KE71YYtndy4kYMcZgAJfwEDtSUbcD
	yezUjcMVXMYzRL1nffe4hiUaHFVL/lrxRk/klu1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809ed3bd0d-c528f47d-f4b6-463a-a6b2-6e28906e55a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c912b96dc65c3820c24ed2934cdc7f31f7bfa7d59c62de4394bc88b6d637fcb
Date: Sat, 7 May 2022 14:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651932118
