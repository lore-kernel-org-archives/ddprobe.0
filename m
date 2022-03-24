Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDAE71B93
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 09:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648112578;
	h=To:Subject:From:Message-Id:Date;
	bh=ivm7A/DQVl8XvxqsteTOgyc09vPjuwRqbgkuGDIbjOs=;
	b=FEKtT4XQJoAMgV2QZ2TtC34RUu16+gMhIrAPcZnLrXBTf7QijevBQjF88eSeapIg
	A8apPycnZwDV4qwoEE6+mz3GaHDk2DGrC/qb/rfXdLcyO/CWYREV0UMh/qCQbaeDI2F
	sBCiyJlbnlq83RSEyCj0yQoASxzt5R7NvMcN1EYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648112578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ivm7A/DQVl8XvxqsteTOgyc09vPjuwRqbgkuGDIbjOs=;
	b=eOUHCWQtynugwzDhce7OFyXcUH/SJdbgLNjY5tGPSdVtk4UujFtSlkNoAbACjnRT
	DuCKibozexVoc1s+pdPLZHcJjKGnMl9guMA7K2TLlrAnqckgcHtfavdafiiPmAnQ+0m
	pFBDNevViST49Z0Bim94R5J0zaGZ7AjwLmOV7iJs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbb2a2ebd-9e16c518-0b85-40a6-a030-dec94bbd7ace-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f144ebe2cfb3dd55bb7a58ba06adf64dbbb9b7d1c19952614c88d85eb37d557
Date: Thu, 24 Mar 2022 09:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648112578
