Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF45A48
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD228C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668972654;
	bh=YbBpwnYG3uo0hhJWJEHYCgyKjvG/jZX2TE2WX0x48BE=;
	h=To:Subject:From:Date:From;
	b=p5OmENDiXaBfQSa/3bQBZJdB3JmCLsQ+dxWN+rB7ipyTNYLsM77AsbBo2HkRfbZuP
	 RQ6X4bLMmLSWr/QZySAxB9Y5TuKvzSY2I0XHFPd9LiJpZsdS7iD++sYxkMDLnfxXS/
	 LW9zJXRZ0DwhyATtyp24Ve9+GH8cXf4ZMwSHf+KcHHjlm1TDe+XSe92aTYJkys64Oh
	 t2E8tEAictJ4/l9e6V/s7zc4S/P65ubx3YiHkffrIvFL440J+S9ya/SChj1B0hR6dW
	 pNMROZoKkG2AthEExr0DCrpx1WNG+0iNsTd9o4tXTsXmEQ4IHcN31VFUlX/QWtId3b
	 Muoq0GCPtOtsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BBEDC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166897265454.3822.11555766207779779469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ef6cf390ac672ec3556725128520e8a8770302b351c487be4353b95c949d9e
Date: Sun, 20 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668972654
