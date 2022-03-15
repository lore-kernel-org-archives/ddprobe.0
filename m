Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75EB310F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647305784;
	h=To:Subject:From:Message-Id:Date;
	bh=tTuHkmMX5tC5mHU/bqiUqmuBmgiwZvs4+Qjw7h2/xs8=;
	b=KSctsMAuoZDhKfO03ABmrrcfsQw2sPCWtfCTc72Uc5gAIt0idQsPeifGxI/VJGta
	Ww46kF6k+ZezUTTzus48UtbHoivpOJo/B3U2/AkkAWIWacoxmuuNkbPa7ymq+/vnlia
	ZFITcabQC5pUvYHwZBcRGGkOjT08sJb57pbZS9T4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647305784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tTuHkmMX5tC5mHU/bqiUqmuBmgiwZvs4+Qjw7h2/xs8=;
	b=SvC7HJF3lv+1fyt5XLUfkVUqxexTULWm3qSJqdlBK21tNdBzp19wtl7uwyhqkZG5
	YmSZTunZp2hF6pHpe8FQ9hcTi73Nw1KbQ65BMFyP/YH4bhAVbWh+PQltJKMyBZOVPl7
	mjG+pVpRTLNe3nTai6oyusGft44AnnyBZrCwSIJ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b137dd1-bb1ee091-7570-44d8-b32c-5d36f856b0c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8664a45a76d0fe9e8e05827fd104547d4e08ae2c12888befed33db0107da63fe
Date: Tue, 15 Mar 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647305784
