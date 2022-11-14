Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB317C
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 786B6C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668384054;
	bh=nn4l/8LyERjpjfqDQ1nzfrRrDNDYlzw3s9dI20kKkiU=;
	h=To:Subject:From:Date:From;
	b=VFBkDRBDDTOz7/HzcT271OBxF45T/r0AgTnpgzcs1cDctIaotSdbDAZwJRNzO+n5P
	 1T7s/TKzy9ebSxcrOy+pMn+SKHBbdrYl7m4ZjiSAxHeOb4+T31OE3G5fQYuObQ8WvK
	 iqhCihPSShzGCnhPtV8IQUk4F5Pv3dg8yuQMjgmusjSsW1DkdJb/K7zHM60+L+ry3M
	 uUScPhUIRlIImEejXhcphTm5Wv4cr9JtaoFYwwHzad5JxwxttKqqTIW5tdpvqrM6gB
	 AL0hx9VIofc/FKI7ly8AYpbGvQpGcIIkYzXkkF+YrRbHsm1vk2kq/pLDdfdUJPUofj
	 vvRLk7k3JT7lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5947AC433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166838405433.17482.551022222839457490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a8bc89554be050d3fee0eb298550e4485dff7749276146948bd3d0f36595c2
Date: Mon, 14 Nov 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668384054
