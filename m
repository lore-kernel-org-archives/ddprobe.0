Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1B71111
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 07:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA0CC433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 07:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688628428;
	bh=bzUK90TfV/8N1o6JbQnCzHtoCieiBpKYrMWoB4Dedf0=;
	h=To:Subject:From:Date:From;
	b=abaIWob3Hcb6gb7knwBld1vSs85XnsndgYpExwkTgOlApVUOyrttbIkyThmClHKiL
	 fJxOY/ed4PhfRlKHdUDZQ7JSMeS6mNy08zXQP26WNvL4gAJ9kqWiVNE0GtKmeyBNkH
	 qsKg3iMpe5bPY6dDYIScY7D/Q+ZXcAkIB2lTtAscA1+lr+l6qQGI/JE8gt9iaoTyYU
	 SKJ9fwnTPybk+g0HLA/lc7usOOpMKkJUZDtkYWnI4Hg9WMW2PCBXejQs1xOMplhihS
	 4gGL6HG/Ippcd+dpHWt0kWRZ/+GBX9eKhrzb6SmZ1T5bXZ1QeMZ2Q8L0obsCeXuRDE
	 uUdrTdosWiB7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9A9EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 07:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168862842870.28413.1097620770123694015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212085428b5434c5635e0621ecc212c971dc919a894d62fca58301f89f6c9c35
Date: Thu, 06 Jul 2023 07:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688628428
