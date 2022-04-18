Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B547A
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 14:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650292258;
	h=To:Subject:From:Message-Id:Date;
	bh=g3vxYyJWQb2bRJlqwXitgwdcb0rsmD/zEmOnVv/W0OU=;
	b=WITK9PdM9+K9PIMD+HEB3DRvmyViWV8cNon0D3HntY2XPJRcdLeG18Vb0C8ASXxJ
	uabs4ETZKYrDb31lVauG6m/a34sU5G/h/0xqkOGJMwU5yuOwJLEGmyetlbfPyjSLAMW
	cuO7uTVTGcwsRgH2GnoARKv0XmyJj4Lz1yVhRt3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650292258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g3vxYyJWQb2bRJlqwXitgwdcb0rsmD/zEmOnVv/W0OU=;
	b=UtD2PUQqY9635Ky9hjhqp26j+aDsllADCuTfF5nNLbSUNIl5F+GkqIpcrZvaRbbO
	/lnrJukGFNjToaRpBKTt/NrdhskxrfHu+yVgQrIdus4EfxHLcC8/DaNxIt87m9gZgu+
	eiL/lG2ReRecWbNiwYY3KvzW6kjHlGSk2YR37WZo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803d1575fd-343ac765-901d-4451-82d9-303ca8424268-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41d1ea7ad96bb131609ad9e000493f75a022a31e12bfe951a8bcaf98e6af7156
Date: Mon, 18 Apr 2022 14:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650292258
