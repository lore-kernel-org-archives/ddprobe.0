Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD74E5CA4
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7154BC433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669393254;
	bh=Cqs55tH4QYXSHmK5mdSUeImez55lf5nUxBkPHBOLM6o=;
	h=To:Subject:From:Date:From;
	b=ajEgD+G+4IJXsqAmQUk4+5T4by1gEzTYth1ITW6X0VWB1sQW3ql9VLAtrUtyp9tCl
	 MD50apAv221/cM06kqePxyi/MXyiQGHjLKJxIMFXvnvzWcn+Le/d2T3WOj4d8tP039
	 e6x2dkUWjX/CncRiQG8xyhP6ZhmUzDE2T4U1UMJbqUZWidCzyOQ+sS4qLH9/igqc7B
	 6k3+xnSsSvMzvdHxrhecHWvMPu7gStBh6NRY+Vvy/5sY0dglUtjkk3dYcWX0mKn6NI
	 bryoNRxNW43LgpoiQ85ZY0++pLs3Vgb4fUYKn6ZxkMDqEK6fWbR6c/o8VG2dBjuraH
	 VF1dv003Tjr7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53254C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166939325433.31257.9332266818316792947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae8a89204e90488a8b920d7005527d9876ee379ddf14f3143831ae17cd00b1af
Date: Fri, 25 Nov 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669393254
