Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94E52F5A
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F1AEC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662240653;
	bh=gChyPiJBVScCuoO7b7/ThLmEx+QEAErdzHMxdzUwqMM=;
	h=To:Subject:From:Date:From;
	b=F+Pkt49m1q4HlQkB7VULxopK24yGiaSGl/2b/4S7WpseKIqAX1EYVBUcUhMYmFuco
	 1bInuOItw3O9WKZdK6te1pR+oF6aEvwIVx9eeC3BZiHomYKNWvPV9mYWoIwvn0+GSR
	 S/uItSWyKCAAGVueh4SIJRBo9eqj/lxEsJGaRgX4hUydE/xx/cH8EsI506e+lrXahh
	 O9L8VoqBkqeRT+X7EDSwm6OWx72gT1h+HYYznbDPbsKgayauOe0jKyGNY16/7k4Kj+
	 4aS0EsQb1sPYWO4pDPAumuuvZhLApQSWL79T3wyQYagJPeyshwF1sR9pEsfmwf0gLy
	 a+hZRVmZqhgwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5600FECAAD5
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166224065333.4319.8234635451094959484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74102f61564ab53acac0c1c06d8ef80044b975a0754f6aba667f68290cff0377
Date: Sat, 03 Sep 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662240653
