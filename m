Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9010415A1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 02:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFF5EC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 02:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686364086;
	bh=bwjcjPOzJ76pEf3L3pwB6bKs7885rydrBJbuAvR1Kmg=;
	h=To:Subject:From:Date:From;
	b=eATEShOGFgg/AzoiwlyZzKJLdHKq+U8zkrNACwmzhlnR5TBAPtks9LIssQpjo9/ei
	 MUCjB8QNnGUl2t7+dwBdSjQpJqEks2Sw8o+lll2U5KWDZO98yqwfa0l+Y4bh0pyVJT
	 IgdBHa5QnTw+3TkzTqIyuk8fAikR6L/B8RVx6/JwP2Yb3EZvJ2JlD9YiqKWEIRJQHe
	 J+u4s0C5wXr/bAxFjQaYmpkxsuHbTr07ArT5TETYxFt6GgGww59Qpl+QRH9rzqPkvn
	 kkLHs2y0PRw/mtcKz8KuB3KJQ/Tb4uJvahk6VSbfnyEmH5lpcS8V1+jSH+Mn+lBmV8
	 +H09sCOwNLftw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEECBC7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 02:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168636408577.27514.3177475010022182503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7a0681c4c2846d05877b198f1090939bb48ed1f4e19059ee08ce2b1755f8fa
Date: Sat, 10 Jun 2023 02:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686364085
