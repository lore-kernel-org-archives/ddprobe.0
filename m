Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4865C17C9
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 00:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648514638;
	h=To:Subject:From:Message-Id:Date;
	bh=rtHeylzcZdOlOm2EgLZIX0NcUShdWRhuM/aVYLbD1wE=;
	b=Q1PDLtBLy6pZYMulVQQ98U7HUZOfAoytLqoJoiTO/qAbJGsCJ8en+y4BuyTSqlVF
	liben2WHiShQOfH3IFttdAgb2OGAon6Tpn9KoAiuku1DuV1bN0ASchgRsGs2reZrOIc
	YHLTWKScq71lDuqecKMFh24KzKCQqcO/Xy2OEKL4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648514638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rtHeylzcZdOlOm2EgLZIX0NcUShdWRhuM/aVYLbD1wE=;
	b=TMk2tK/+fGscaC1luEN50KEfd2DbGiPU1GtcR7krJyPmNN8UBzdDen0fRJoxf90J
	SO1eOD6O1Fpj0W3/iXZNSkGI9MXEE6hDTvywqtlZdLujD+uvC89WI7+gnsCvwfAUp0Y
	LNca1b6aaF9XHAE1vrbv0RjITkQ/+xqZxG4Hnr7o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd32121b7-f944626a-cdef-40e1-a9bc-ddbb0d6fad1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7db8e218e3c4bfca5328d084e706eb7844cba308a8ca693c95650aafce748104
Date: Tue, 29 Mar 2022 00:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648514638
