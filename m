Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B691371
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660311052;
	h=To:Subject:From:Message-Id:Date;
	bh=NJiAx6bSQhbZKhByI51x2RAyoNxKfAWbplHlidlUkNs=;
	b=ITuErhLtHyEqhS8TNikHYC0VxCfd2GJMocQrvNrj3P6Qf7BMN9G4QV+AvlEeeXzr
	zbdzF76rsRRjyiXzBgLPO7Xe5FI/qWolWfw8be/IjEAjia9xbmDSc/Eqsz9dhHxTjkC
	VNj9tDLV82a5dZwDIcAJm/7PHBLn+e5i2xOu+NE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660311052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NJiAx6bSQhbZKhByI51x2RAyoNxKfAWbplHlidlUkNs=;
	b=YTk6P8EyDfOyvSBfEb2i536ewSdUm9sypJqW8hPgDaEYE2ppTzTMssY+ab8XX6RA
	RLwbspVT+0usvFI11IyxkpxMSXOF17HPrqJCWWSLcLbvtdFl9XuRYIPEcVc/Appu4+y
	tYOKnWM/Xo/7XTJDHHNr27CUNpNDby4t0u0aOeIE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829240212f-3751ac7c-8345-4a53-a332-6d3bf78a0a2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10b3a23465d34e7edaa055f0ad912042927be535aa0bff0a8e309f13ba90a555
Date: Fri, 12 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660311052
