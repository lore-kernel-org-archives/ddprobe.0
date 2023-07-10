Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDDD14A9B
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 22:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C1EC433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 22:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689029228;
	bh=CqWbXaNUj5YYzZlHMvruvfW5GejtfoLTw4/Ivnjs9l8=;
	h=To:Subject:From:Date:From;
	b=HDznKg/m4JXWBLLEdHpB5M3//8bG85w539YzK9xB9Uhy+gskRAUbIFNM1kXOOjmUp
	 p/Z4H9RWHAk2vsRGHJJ4vR5kk4vFg7ZeXcCp08s7HmTCLQnkW59eRXaTFyqFQY0n5T
	 D0VxRMwJHroCwMF1xPPTOBwe+x7mbskHz0PqOQ2friG5lbyvbnY24PyL4UYGhoQgym
	 UyXwHcrm6/tOjMicBefjwiiAbGcHYfVaWKw0LwuGG/jxXrulT6sGVjtkOvDnZegWZv
	 ZkApk6Kw4Ha/3scl6RzG3jwgIhzRgT3ZIOnFf8VFLLhIyECpY8+osWQvDWxu+/Y/Dz
	 J5cQULZEaO7yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CB3EB64DA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 22:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168902922873.2200.10971137486720117205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8903bb9cfaf9c58d6dbb485f9449a8b9b704d456dc770d06cc79776343d7f7
Date: Mon, 10 Jul 2023 22:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689029228
