Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444D813AD8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 20:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7149C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 20:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689021428;
	bh=pESNnrnuDn/f7iKsj92ATRqQ2qOF5p4R0vnbeSa1UbU=;
	h=To:Subject:From:Date:From;
	b=giItd1jkdoYr2vYbEqvzfPJuHHOP9KIKCn4/HVl0bQWyc0ShlO15/KpymJJChPJoe
	 H4XgQLCpD1IINO8zn7W7ORUcvCg+6FU5qK2nQYSX9lzyzEPLeX1uKvIkVThHIUHPUK
	 R9uk3myrcbCwnouF8q0WNZCokDaq6IkAlTUQrGL3KsmK8b938/GZW0qm9jWiu9toZ9
	 wBISkD/7rjziHOBsK/cfrrTi8Nz3etcZ9hXq5BuAwHWMvz+QjEmgh8EXhN3E114Q3g
	 EssRMUlQg+IibhoVLnV7nQvl/qbeFo63B0Tq9moL+ZBBAaLMp9du9E5ZMQzr9Yz6pp
	 PPkqZDhTudWFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB7BEB64DA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 20:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168902142876.18643.14488732000200010607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad8c4d8f3a90422e10e05f0373df07320dc7b10ed6ed0568fc889c275b3657a
Date: Mon, 10 Jul 2023 20:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689021428
