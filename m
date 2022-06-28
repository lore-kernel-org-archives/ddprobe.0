Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1714B362
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 07:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656400612;
	h=To:Subject:From:Message-Id:Date;
	bh=FsPaSZCUPMm7MsKL68OwYFuFs1vSbMBnu1lkUw+Mbbo=;
	b=V5TcU1cTW/YGDs3ZbGcbtrnSpqdbRKfdJm9V61UkvURyVrEYUNe9X/OxXOWI0uvR
	/yb4jmju006oK7GBibiv026b4sFCMqTuZRRKwTfB6e3OZKKyAPxI0ekNYW6vkoMdz23
	v4yigMz5xUP+TgErqkOGgPDgK1aqJVt8lEupYPeA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656400612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FsPaSZCUPMm7MsKL68OwYFuFs1vSbMBnu1lkUw+Mbbo=;
	b=KzF+xpBcK7ApA+02mPfHOl9Gt1sLjCSX3U811gbgjsxLLRU6yKA1e78vd5lBrcmC
	ZX1vZXxKBHu4c8yZd97P2nJtFfo73Md9o9Lv3fVKiWd+bhwcOHyc3xAIWVxfh5I/jUS
	3BxuFSi/LvrMP/ppQLARQzU1ko7OfMIlgBOkcnSA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a92b8be4-8b647cb6-e089-453d-95a7-1aa5d50d0598-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaeccac1b1c1a3b924653fb7bfb0c3380bcfdc676c78a673cfaa53c04cd5a144
Date: Tue, 28 Jun 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656400612
