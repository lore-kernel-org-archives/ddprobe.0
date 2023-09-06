Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7DCEDB
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 17:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AF2C433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 17:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694021048;
	bh=rT7EIfJ+XY+NC4o/pg2oiUTag8VDZtne3SgeGRD3IUg=;
	h=To:Subject:From:Date:From;
	b=KUnEmD7gGdY2i/aO7zJeFJ8BmkzHhz2iz2mfBKk0Or66UzDi3Y0BmpWyqRRcWuY9V
	 ek9s9mxDQcPomXAMDpLltuZow6ClGltDmFMvYlKu82FKDXCl/GiYW7F8XwGSIixX7W
	 zkcZo6DUuqkMx8wE8O4qBSkCOQWeHrg1oSdh3///V1HtpSHOaQAXxpxng0l9SdrfaI
	 CAxmUpd5V7zeXqKP1mwGYZst5fqtSYTcXPlCOb4oP17I7y8O6jDwPsa6C+UPMZ/PyW
	 NH+P5sHBUJ7+3ZRPkqbP26py7fP6pOVrQnJKTQ5s0+g2riWt40f/pvyqVj3wHDoq0B
	 amDGHbgIsowIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA09EE14BC
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 17:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169402104869.29809.9396345153444540297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f319718d38100e4a4185f900793fc57208abaa52fed59e60838831bdea0dcd
Date: Wed, 06 Sep 2023 17:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694021048
