Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7315F53B3
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 08:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03E41C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 08:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688200449;
	bh=aXWIBFEcCHj2V+heIyXVCiuNYr+CXvtWtP4lGww2Qos=;
	h=To:Subject:From:Date:From;
	b=Ml+barngVxlcnBNnKdCWk+7x7gBg0qFCA7ojcRJDA+0ZN5bLzy3dtuHEdeL7iexW2
	 mXa7uSCkXCY4luSSn5XYGhHWgOg39Pxh9rcK7kt/16+qvdhOe/rZug0suULWw76zLM
	 jyoEwLrPw6BYEXmTn7Rx3kAh7KKPj+yaUIyQE3aZsj3+dtF2rdkjKCJnL+D0rcZz4d
	 KMhYyFXYxMLqCcFte+tN+cgo4OhflD3ighEr2OTjNRgaK7tmKGHG/QdlGJ2gX0kGqx
	 aE/lDgjRPtUVjEw8PWE8KrIiTf4hv3lQ5+RmDH3KD5hBcjvll9kmXug1UU7FVCMJIV
	 nv/PeHiQ6tfAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB4D6EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 08:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168820044888.1643.16577247642189343904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6072673f9405e4ab43bf5760885285202d86796ad579b773041745d6938c923
Date: Sat, 01 Jul 2023 08:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688200448
