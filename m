Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5BA718E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E454C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672554687;
	bh=QW33DL3Z2oqsWssML4UiIYKy9HQ4dUESsLQsd5nYCSc=;
	h=To:Subject:From:Date:From;
	b=WgVHi9ERsTp5WRlcZZlLiagUedASlrv1r0yR+xkhyFyu6xNM38gqHxjOJzTAf7pYS
	 u5wqe8/Okso5hVPad7utqicyshj39z/jJ32q17M6V99N3VneGruXtk0g+ZAZAHDU1E
	 CanVAMGxeKRsnociguZHGJ6YfmZyt+mP1lGqILZcrP9gRsq/uWO/c1AlcQbAXOSVo2
	 mHdZz3Kb+Cen0gGBhPH5R9k2J4AKLqHAVxxfbU80cCuoi+ltVVPlXyIlAYRJ5101iy
	 s6IA6aFQJZNEDVfoG+YdcM8mzRhMlHvNDs6RR03QVNSF6JZGGXtRpdtVHLptMgiWOo
	 jN4we99lZfkRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D18FC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167255468741.25871.8020991773337700737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17564d07909cd347d02dd5464f9bc558c6822470423ed946ac0e582b47a29776
Date: Sun, 01 Jan 2023 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672554687
