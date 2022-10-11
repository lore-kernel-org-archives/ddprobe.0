Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14C52564
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7363EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665481253;
	bh=otQDvXm8LelfISvQg9jdB+R6oVSYE4QA+FYqodU3eYo=;
	h=To:Subject:From:Date:From;
	b=dUYHvf3lvqk4CBwdRQrkCUUusSnhOXlFOsj1wymipG4CsbBId8RWJR4No8JzVtS8f
	 UtHx1HpXOignbjQ0kzIDZEtST4P+7gmiBfpYFdo8ccROB8dbm4fjjbpuFUQcEySQp+
	 0JE1uLjMGTTILfptEU8M7XWxqbknRgfEkXGau1CJoBhHBgJcgYzq7dyrs0rQeykNgb
	 YOe9mUgybzI7FUN7oHwzaUyhqAG3jJuXJ5AKWxpgza8rrDZR4x1ormlWiFj6hCVIGh
	 NLUZoDF2D1TZ7xVkn8rBl11uyC6zWAirnWLz91Q5FR9YgfP5KVKp0pggO6PmYMOuH+
	 6tsVFiXEnO+5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5471CC433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166548125333.13972.16966735571290301262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1b04c547191292c8c876b7c10df77ea67ba0f5e8512f33ffd5c77e9ee6599e
Date: Tue, 11 Oct 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665481253
