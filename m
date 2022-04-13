Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78A6290C
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 15:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649864098;
	h=To:Subject:From:Message-Id:Date;
	bh=1iAXr+8JsNiZ51VDx5l6SL6Ysuzaqj9+OA7xZkXzHmc=;
	b=SUzOv/lAy2IHS/vznPR1Ts2ThYOKWU7lRIMQ2rFqNQKWJBR7wUypxIGfXmEjDi2B
	t97jqzPDhnUd+L8Obo7d7ZUyYjJtSG9ROtpS1W3jkwJiZEHwLSuZ/yNfEaGPViwePgi
	6j681JIgd9xcaPncBCPtryzbHzYLgd3IhZ+EBK6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649864098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1iAXr+8JsNiZ51VDx5l6SL6Ysuzaqj9+OA7xZkXzHmc=;
	b=jhcWnTAF1Eb2djH5j2tcp1zN7yOZ3kACBKz1TZS8Ynb1j/xYcGdxIs5uAluPYiuo
	/sLfYxRZZDgTrEY6bPrjsiid4ntZm1wrvw7HUlMFpY/ZNhAZp6Rw88kteVWoDIRsE+g
	m5B47F+ax5igyoIPiYygbCThsxKrpXAVKN1y6sCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018023904212-f6bdd23a-a0fc-4cc8-bea9-1556fe6e3f66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fce038c90683cce4d76aef35995502ad4d70646eefdf96de604089c3214eeb1
Date: Wed, 13 Apr 2022 15:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649864098
