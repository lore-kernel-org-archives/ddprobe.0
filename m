Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9329A23
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 703B5C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668238854;
	bh=n52x13/xTsBfjrYW9lpqaI9EosCW3HtC/iWNrUbYbys=;
	h=To:Subject:From:Date:From;
	b=mnXmZvmd8J+mW1sygi7Ygqse73KPKtiN3PJytfKlPLQWE0+Ph5I0q3+UKN6stFEaR
	 2b4G7Dp1H54fdJAOrfZU1PBsy0HGPpit04Ljsb6/p8qpUNfERV/Of//90roms4Yy2P
	 y65yZsNmucNa6LDglb5oxqYRnljgH4pW5C361F3lFNh3J0U4npYCL+ynr6LPBeLZDj
	 tyYA4f1NOxxgSuRQ6P6oYYbIxcIf3GbCj9GPhptfgF+VVI+k8OtXbHZlCGGIQKr7zd
	 min+ucbyCKj3pc8xGuj/uB/1ArI5ZPU3ddhQqQjoU3MuKkV7JfjvdOnyvyDaMu9lYx
	 x70jO3QPblN6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DA6C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166823885434.9011.13752881601196585542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4481ffc5083ee359cd59c784019be809c42d45e7625786ac5e1ab17c2ce41519
Date: Sat, 12 Nov 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668238854
