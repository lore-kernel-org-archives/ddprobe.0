Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C103B8490
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 747E1C4347C
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668464454;
	bh=uWq7oJkFoMcHABFx8b95ndPTN8xxCVVxRdN9gQf4T5A=;
	h=To:Subject:From:Date:From;
	b=JeOyVjGdkWG33Q1iFF4LC+pni5KQfDOXA1H+l9HzzYSNJf7hROX4N++6gd/xNwfeg
	 vj/PBX+Ox1QGiZwlRzmNjqmamRsHqCAa6paM7/ucVjjl6bVsGAFnvoOevITbB49sjx
	 FRjOrFksJn3wnJlMGAhhRoBB/GDOwEYcMC1UAOJnGQCnqq1nLKRTSBeyByKUmoccnF
	 2JEgw2Vdn52+9cup0igx0UFELEJkicpQkj7SQtSKlVdo/SCb+LgtABJDaILEvGOyBl
	 ikac7qD22ZOeGPzKy8mZrhFsOkYIzncbDtyM3eYU8Y4Ie8wPkS20JIyS+NrZWDFUYg
	 Q1BrEFqxY19Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C42FC433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166846445436.27060.12850891498409809706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d0859b770d999c66b168526fc280715f2161d8ca9b48a3249367a8f90bc79b1
Date: Mon, 14 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668464454
