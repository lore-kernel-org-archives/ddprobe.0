Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68545539B
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660607452;
	h=To:Subject:From:Message-Id:Date;
	bh=DYmNPXUCXAKBiLv3AC39AmDMIyjwS1ChfK8Ihjl6W1U=;
	b=UfkwPKw52nzv6xEtDtIUzZS6XpFEaUo4OOMhqFwUkEGI7+RWg0r9C6f3VhEfH4NE
	SDDxpn1I8bc9PN+xbBQ/oXTDvkoa6DYWtTx2s6rfKNIYuD0/mqYPFyothpHYMAM3wbK
	43xbCN/9FlGedC9LXMbxKFY5cQMIOl1INEUiric0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660607452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DYmNPXUCXAKBiLv3AC39AmDMIyjwS1ChfK8Ihjl6W1U=;
	b=KsZs8PJm2LWpUTVWwohC4z9uwQ2jhVCXXr6wdCCW3PMrpSsgYLy1ej1SVWnEtPhR
	PlgKduI3EwRu28UQCu/jUAx2t8/tbIgjP3yFQVuYdPLLJhh6GH9LJflMeMb1ITeXLme
	wmMTExtX5ARPfdKW9HmtJWQl8VG+v32x5Vdah12Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a3ead589-cf75d451-4403-4fca-a7d6-9a7fa5317775-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 733ea24a0754ae0dcb89a026caefc0bc5cfa879dcbc1704014551152ec7eb0b7
Date: Mon, 15 Aug 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660607452
