Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9DC3D9D
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71994C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669572654;
	bh=D76oJdoYg7xc3Plj8HzFXqrd8PBXEfpesXUqa6DO9JY=;
	h=To:Subject:From:Date:From;
	b=d/pAGLpeK9Zjcg5wPUCr27B+SpUlZ9YcIv+TLEpmK8f7yFxhkXQ/XqnWeU9nqjSsd
	 vSOLADU/Zf98Kg3UkxmwPRNJSjmc6zSWWFJ+kw7PdnghlCcOr/PLMkaq6mnnvH6S0A
	 kpK8hpz3l2E+l9Uy+VFQVPY/uhpkQHnaNrHK64Y4/HJLLC19M+ULa5RJMbo4Qs/KFw
	 S+OZikY3OIEKoIEgRpRVWig+CQeltDln+x/pgr66Hw0hyOz5eEOua17US/+XQg5N4/
	 NqZ2IjHuM8RwnBRtv8OJCjvVz88MI9z/7LloBwq8EWcZMw1WjJFKwdCpI+6VbliQp8
	 h4pa0roQJmK+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 503B6C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166957265432.25750.13751344699651342140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf2abf8c25f471defc8e5132a18163d6ba5af68c89e2e472bd4600f0cd1423c
Date: Sun, 27 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669572654
