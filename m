Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E4D1842
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEDDC433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672237287;
	bh=95AfmQTA9UWP/YYhv9aAYYQwA2JtGD0jbLtwgmLhYKE=;
	h=To:Subject:From:Date:From;
	b=vIDO0GVLirIrmbcCNWU7JUBnNY4qlFnANO1Yzun4IXP3XkFmTTeyPW6R9tHuKWizg
	 5OX/T9DgOzF5aA/aCFaV/Pe15UaSn8zACK71EKLrjq7B+ouD9DyBK22DKjXGAoVySo
	 V2F2uxE5w2ynZ3R36pngYgksmbTz064+C0/PfBBH1YqRRc4S/9yMG9mXYP8OhGRb7b
	 1JHwVeAYyz5lxe9O4SBzlQn/6LXADmUPS/FOM1JoU8K4AO6c1tDDyvuagMYcXu/pBo
	 nv7RYBpDeQG/Md/bpsscM6VaCjeQFn9cA8o1HVtYn1VCptWIU3BZW5OVXdCtjde+Hy
	 tqz+3JNW8DYIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C6C1C4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167223728756.30715.9985991705499661052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c4ff009cc70811a592d2f6c6ac2935ea0b4aaa81f3b5c6d06ae5ab4320603f
Date: Wed, 28 Dec 2022 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672237287
