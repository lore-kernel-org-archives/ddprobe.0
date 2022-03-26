Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074847E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 22:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648335298;
	h=To:Subject:From:Message-Id:Date;
	bh=cmuxMks4+XmMDehX3hvTHaHJiYkCA2DilaaPUNxvs50=;
	b=f9GT4HV5igJvLUggEyzzASjBfUyhtdTHApn1EseeSI7EDpbXlqFWwD18I/mUb8Gz
	zVwKNEpLCLjtzWwwnxuejQ/NYlUycE54rNJ8pMAfOTZEJsNxOmQeOsBVL4GF3YBoSwq
	px62JjTFIB/uDYCAZjcJZThQHxWcQZL4/I2OR6no=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648335298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cmuxMks4+XmMDehX3hvTHaHJiYkCA2DilaaPUNxvs50=;
	b=hoWQMFh3eNQFxgk2L6BJSa5rItmYkJvcWqh7u66MGjHk+M+NiNQ6bCn1sDDPrg9f
	wUiQCHouoRRWpd57zrKjyM5yiJ6AE6azNXLC9KQcCtbQ3nDlHfVQd2HBhTOE9gpuLLY
	BfJeT2l/oQZSAP4udSdl5b9MtWt8fgAuZpYGEN94=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc8709f3f-5395bf91-39a3-4a44-b7af-78ea215b04b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3aa0857b1a526fea8e98ed4ec8611386e03e854752235e760cd98e11dbc9d69
Date: Sat, 26 Mar 2022 22:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648335298
