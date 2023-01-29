Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED2A3D63
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 23:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC19CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 23:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675033985;
	bh=/3PfqRuzDb+z4uZTUlTCTz/0RqeZ9xR+6BY88rwls0g=;
	h=To:Subject:From:Date:From;
	b=XC29T/YZbz3cFwIIQh8X7YYPa1E4RtnoWrhTKLgfrYNLlH50MXcpDy+aSUpo/4C0m
	 VKSJqVlgNckgFuU5g08JQlrz+QkyfjZglfmxi+3TN5qQi3/oyGdQ5hDhLPjxSkemlO
	 Y/AlJv5Fw8JwAHrzUSV8Eobzk/9kB+t419PdD0MgmnV03Knw6Osx63UVm2nGJgSO1l
	 Fin8X6hvYIeJpTHm/R73sZUAw/8PazOOZAhsq1zrW0AOq6c6fIjXhESQetjK+gFLvf
	 tPkHyg8j84rZkyFwHyu8lBaCooHL/LbR7owSY/x5cox7R9W/w0K3J7ch5PDeZ31IZm
	 /BYpmzUyG0cMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C470DC54EED
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 23:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167503398579.9512.15488910912678678881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d952e7d3d75f51739acaf3e9206b7d90de582c4cd8c0b607d2aa7a87a9d4d372
Date: Sun, 29 Jan 2023 23:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675033985
