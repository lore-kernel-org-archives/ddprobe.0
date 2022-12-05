Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAAA817CE
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84625C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670216454;
	bh=NoHckLCmmzwSwT/267vV2S01quzoI0SMqbZSzxrlo/U=;
	h=To:Subject:From:Date:From;
	b=SQpGilOLgNqSo1jBuwyBVP98vad/NaOIf9LSea/bS/5ei3gULdruipK1ZcwRVgKsV
	 lY9CD+td6GPwmkEYuT0g7cQ3RKBMjq8SU4K/vfkJ7gLWlc98oH49zxjcg49nYolQOS
	 SVxg7Km/xE+OOsCOYabY8qsrrUZH9mYRQGgaKVNoHZ5K83UIgdGxI8VoUheCcNoGan
	 XbUkGOxJA15AgkM7ePFk0ujuAXDI2urUqrAMbSm9fqvYnvetJWZ2KRJXnbjkE2jffi
	 50yjdEo04oPajjhoObFyEeMF4LdSIx9/CwewSZARu2AkEL6PZ1TFdlKvE42iC0Yu+J
	 6+WQmiEMxECUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678DDC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167021645441.2390.13703115368267193851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80d4b6ece5337ff7e02e952dab977e4ab03a0d5099536c696678b1a8dd3f138c
Date: Mon, 05 Dec 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670216454
