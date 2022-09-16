Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B41F92105
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A7B1C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663372253;
	bh=EFMwXmGVGYIjnGaQ5uVnNu7Ulwf4QJDDXW/ZkBneH34=;
	h=To:Subject:From:Date:From;
	b=ZlPgLZ+laIzylTM+l7OSv/IFDK5Tmw4Dgw/HEFPVsiiUoF/HDjXZUAO3BAlQ58O2f
	 yRHWj5I63uAyVY7wjgiLOCxb6t+M0HB5W40BqnaAFQkcf5bRVQPilZWCW/EIpFK3QE
	 Gq+WbTxFkDHn8t18DiOqBBaQk+zWD4eUtZHEr+ATjYiwqkeBtcuAOueVxIu76a3WO+
	 LjcpuyPKWIWodxTeKUZy51azh67mP7U9QlIHYlPUyie+N5/qNi9/mzhTlvTcxOukay
	 kM+DnqYGTeFU6yYt8DlF8QoywcIbHPcKomTgNV7/n8R8eEfLC+i5unHEuK3+iNvB/g
	 RzrhxgU3KNxAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F1F5ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166337225331.343.10851099823302049997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f5b7bed87a2373eb2524984cc75418cff3eeb86b6d79ba6439166deeb7730a
Date: Fri, 16 Sep 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663372253
