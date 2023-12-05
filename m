Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0784915BD
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBsDw3LE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86944C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701738496;
	bh=aR5KHKzP+uRhf2rWNTBXV0ED9rkXCof3jPYaeQ1/uCY=;
	h=To:Subject:From:Date:From;
	b=JBsDw3LEK2iS68k/GYA5GUt8uKpWHc6H/TT7Hll1PC0ZelDytSKFzTcu3i+3EP4z3
	 PWIfUETvr+obQx2OKl4YoyxsmZK2WNLyw7ZHcZdtSOE/6zFvmUa2KR8CrwITfEbz7H
	 1Q+ZT1XuG/QOYjUM5EGiYbOtwLgtM9eY6QU9Alx69/yN8qqCPc1gSmv70Xk16bml27
	 Qsc9CYtr7rrxjd9A0KXONioiFlddTdCEyIRXb3OvVY/PG9thB0uguXgDMe/sjUz4w6
	 5ZSMqNccLAYKoG0TgyQZ/o3P83ysQW7wOCUHQ9YBXctLHsvt6RknCPVqQxFEvPYi6y
	 kEwnmok2FGa8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66AC1C4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170173849640.11202.3129163862019381985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83bc38a4a80fd07226498aa8db0df492b26160341b374e907de7b7e2f32d163
Date: Tue, 05 Dec 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701738496
