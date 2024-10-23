Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397131E51D
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729707354; cv=none; b=Ty3QX96qG7uT2xIOz8BX8RYSM4arUasObGZ7SdAehjLbQNIezqw4uUHfApIEx7trsgL3JDkuEd0r9R5SWBPKCL0sEaDcI3K6E3E2kUmH0fDCQCJmyrZLGFpM0DUVXS6jmWO/d6ffKeu6xFJxKr3nC86aY8lOdk2EFUyHbqcEMuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729707354; c=relaxed/simple;
	bh=+RTaf6xuOYU8Gh+u0vMZrKcKtV20Qf+1plQrRfLEMDQ=;
	h=To:Subject:From:Message-Id:Date; b=WAn3YdFgDmX7GeKV3ZCcJPRlp5J1UZelsy6WbOB7/8y3SdFq+mwslb9qsllvHN3YvaKY503uGOgzzRRTzVOLj2JNpFVFKbKdy4DeVFgxxGvJRTgWAgjDY5b/X1HNGSt1TmRrKvFYNqqRjb1kHG+kmLfwBKJFB0QnQKrJ+Ju3xZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdmSFogB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdmSFogB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB570C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729707353;
	bh=+RTaf6xuOYU8Gh+u0vMZrKcKtV20Qf+1plQrRfLEMDQ=;
	h=To:Subject:From:Date:From;
	b=FdmSFogBkjmIq9ZA3ynX15mzMGUkxhO74w5qjXzGWUI3oIYjUMAQp7zxjZWPIz4g8
	 E1KsNEkavQEMQjMpicb7e4b6k5J905TBNf+x7cIZrZe5xvgwlMuEUA3fW7t4LbXViU
	 BOYzHSkmvddYxtTSKgpvIQrOHuE0EjoPpQhqXcaXM39LAm8GI9yWVdIK/s1MjlZY90
	 BjSMtiagimHXxUHgFwPn/5PFd8a/3tWjreZRpSQp4STURpIDsXTiX0EAieiNOrYEzK
	 Y8t8g9hkwSr+eas2b++DZ1o+yQ6LQhdhPxmeNW2RWGK0Jlco90KBjAWmqJbxMa51v0
	 fD0dfsakdIP9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FECCFA45C
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172970735358.15692.9249730159672366619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665c13e29ab4eb653fc1690658749d92567921dcf28913ef8ab237de4f66aac1
Date: Wed, 23 Oct 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729707353
