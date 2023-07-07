Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45120BE60
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 13:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C033FC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 13:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688736428;
	bh=3wqszM0tW51oackLuumv2jGnogg0Je0TPkiUd3Ulpb8=;
	h=To:Subject:From:Date:From;
	b=O9Y49r89m/g8H9L/FTjiP/lt29ulSa4gbku3HWVHqERIV6uZ9/QqdDqQZM9+3ejNT
	 /OBBC01bvpx4VfMvR1H++jaQ9623id03kUsccycuQDrqEW4INCY5SM55bwy/4MFzeQ
	 w58S6Xd9GPFAbGUcuwVKUGlNimt+y2wq1Ph+O9xQLH8FythrruR3S5zb4Q1Swp2Ksy
	 2stpAD3M+Q+tAFbbrqV+QYT7yltU+IgtM0QqvSpX8JvUfzWMeu7/qHBBENlaRdZ7MD
	 G3WZveM6iF5HzhbefIiKmtwlVh3SPgClYr9iLkazVuMm3Dfe0T00ZJuzL4OCGbAbFB
	 wdvqudB3rqBkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BA4C001DC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 13:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168873642868.27548.6754583278550501580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd067e27d0bde1f6e496ea9ff86e4152e3c566a4f48a413ea9e67976f76bcda3
Date: Fri, 07 Jul 2023 13:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688736428
