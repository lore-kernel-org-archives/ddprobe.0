Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76B97E
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A1CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671419487;
	bh=ZfzyEcK9CyJ7ymeiY7ltWxmF+S0hUglDPiPCam2930Y=;
	h=To:Subject:From:Date:From;
	b=TtTNG0ZWvdNdxHARuyK6v7uV+z16VvPRXDZbmovs9dVE93wjxAzAzZWi6YxW81QB0
	 QHmQyi6eDHPCrhd5ncG012XEYULAQO/S0kyu+nQ1IX6HIZioJrHgbVI2E3TcF46L6U
	 Z8XMJ8I0zm4Ahg0uaETuYU1DsYLAyT9j6zKE/tBjQbcosFDazBrDL3DeuH7c26FMMj
	 pCxt1PUM1lHakpnHv9f61Az7ApksRkMaJU3Weu+y/s7OPRAMLHDNTT+nwurvNox2J1
	 RkHqwJMp6Mh0JkFYmeVS87vhUvhIM33xIQmXUBQCkDmD67Oc+kMzrV03mBhDg/7CTc
	 7Um3mXzYA/cPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645BCC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167141948739.10308.16995263787878646209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7102040b07ebc3c60b5822dd49e42d1ead004d65490f68e0fef324c7a566ebe9
Date: Mon, 19 Dec 2022 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671419487
