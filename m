Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3357C15A8
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 01:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649899858;
	h=To:Subject:From:Message-Id:Date;
	bh=nryijA716FLWPwG6fkWzY3SHtKm9M3+B14lwRWuT+jw=;
	b=MId82VzOaAqITr0cORlfI4gHquZ+/Jpbk2LHuwHngX5FmWzVs+QSZKzpkr9cTKm4
	nfbEiCS414YHKXwjiNQOKHreP/rgKZQ3XXkmrducCzGWih6KgbXSrPaEdRWULYuV7hM
	qoB/7+PT4Q1FRhSaXmboHrF1lQLGgaKuJ672xj7I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649899858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nryijA716FLWPwG6fkWzY3SHtKm9M3+B14lwRWuT+jw=;
	b=e8I4Vt8jqC8qo9MO+7vPNU6sPKBgAcLCxkyiuj6Qu3i3BFPKMszCmxPOdz/DCZYx
	EiTM7ALJo6o4IheexWEQtxsBIvrqLhdOjCFrleqs2JgVnoR6R+T5yxOR8gtpz6x5LFM
	MkeWfnQDCbMVBtpdzf6SlVw71U7/PXgQyupU5j7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018025b1e9c8-e5871b74-f3c4-4bee-8f6c-23456ebf212b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c5535f74febde05f94278143a1cf13453da38b085462b774c48090d2025b7eb
Date: Thu, 14 Apr 2022 01:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649899858
