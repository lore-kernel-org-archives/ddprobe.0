Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730BA1BB2D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 21:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BF7C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 21:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690578128;
	bh=YNAPAKqsGnEa8Y8iBSIgK5wr+iU0YoBZMg7QJ68Ou3s=;
	h=To:Subject:From:Date:From;
	b=FOyh6lvcVQ/0ZMSkcoI2+FoadWMIn+EORugopYQTIT389L+TcGoO/wsV3rf0ke7H0
	 d1ZtqhXElAhQiHh8Z7PIAFY0vjvUMzk/YBb5QDMx5nP9EAMzogDvKrA7ETLuqNT0bI
	 hZge5RytoEJGtLdy2/DcX3RMB5TzlIjIe8P8kRZou0zGLNZ7yq76tiXMlwgPEX+7hY
	 PxI94h1IzUnzsHzyN0y+au1xaTi2udab5klGIPffBKlg2egUO/tpIGrBWRbh6NyGnO
	 7jXGzYdypQWFD2igOKREuAl1PNvgsfTpixhWHU4ageTS8yR6XV6kH/4M9yoGiZhjYW
	 +eCH/EN+kn+jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50FEEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 21:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169057812873.23206.18076102069787503834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e8a99513c4cf34f8f2f6b48fc978f90f6681fd497ca1f1cf8089aff8feb779
Date: Fri, 28 Jul 2023 21:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690578128
