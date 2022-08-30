Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A193200
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76520C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661869253;
	bh=m5g8Fd828yH3D5UdKWjVkZzKsGmHjbYQFk/RIBdNUC8=;
	h=To:Subject:From:Date:From;
	b=nui/f0cfdvv8EoAQES7MlljRaAWWgOJciP2VAQ/QZh2ITK9bU2+lf+56pfy7/oWFC
	 Tdsi2HPgIb4d2y5xkbBrsAxB9Ij5/hx3qhGNbpYZEQtMIcyfENLXcTln6SWdblOedU
	 v8cxGFWrJWyzKe7Ht7s/6Oa+/Q2057/ua+XJxnmb3XPnItTpl0uC3BE9sj30es5eMV
	 nhW+27rPuNtvjEX0cG/ARlJtou72kxcXhXZ1/CLH9aAHcDGjXoq8OHlFbbafFB34mm
	 vhVl6UBemaxvQZk67rWJKsHOqfNvjQjXIJtJt9jJsG5o7AvStmVkjBog56plXCtQVZ
	 NjkoRx2muVQTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55EB8ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166186925334.3122.16899840122937851879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65f81b92d280eb9f65a2e320245476ba2261fcda301133ce3b3ba6b182da650
Date: Tue, 30 Aug 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661869253
