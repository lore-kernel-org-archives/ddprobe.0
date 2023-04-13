Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 920DD2F31
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 20:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 46763C433EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 20:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681418946;
	bh=jn+pJFGg8+nqpfmdvyRMbxeOLi0c25xJNYANRqXW0fQ=;
	h=To:Subject:From:Date:From;
	b=cwjPbKSSJ8u1y/yYMXP5I0VoTMma6K4hIjiD/XXhtefXMC3/E5VsAV2DUVuc5NpNZ
	 zU6e/rSo+doeYcom3WYJ7vyuTdjlCYnig5/YewkJOHWdLKiPC494UtZjXQNnUpj5TD
	 6WIVC4T9B+EyMYW2ZhgMtD01J+/+Osl9izT3gNxyyygyDqJgW0JWh+VXGAM87bqRzT
	 6JpXIfFM52HV8mmqkAaHUjasq+rIzfBXqPSllqX5qijmBU/9e6hC+vnL8p2tme0Nbk
	 7U9T+vl6FL+9LfKn83YYbG+1+1hJhABuah2WNe1vma/77dbjpeT3TN5PW9layPliiW
	 FBKH7uJSwCuRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CAADC77B6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 20:49:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168141894602.7686.15055326646739346904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7fad61480a852be1947721169709003172471c4cbe8eab4300b09738cce6273
Date: Thu, 13 Apr 2023 20:49:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681418946
