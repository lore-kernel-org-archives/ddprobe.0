Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4511E179AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721481354; cv=none; b=cKBK38y+CSO4NdQKhQ7JVLuX5QpujytPs+ZC9ocya7ufDK6flzPrWqrIZtbpjr3IX8CCjDJnzHtdsH0rbV4kwtTBT8MxDOqoXjAV197fHv/NOyX4LcN6RuUhxxrTdZwyNvw4a3/bkujnVjvXiH1uxPXykhIB0Tdchq3K+sJHTWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721481354; c=relaxed/simple;
	bh=W/Gcmkw4KXbFWDCepMYsOlE4n0smx1TrshMOKjsqpcY=;
	h=To:Subject:From:Message-Id:Date; b=MRk5GO+zH7t42RJ4/CS0oQHYbaPnP6Jm9pTJapDayIBjSyGU1XlSeQDMKsbStx9xbrI045WVooATE+wmxwMozuod0XTufVmyCXt0aAGkPxlHfauP57hPF/ilRGqw4j6hnL90/jdzHpkXvzFb0L0KxXUD8flO4vnEVEQfeKk2Uac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ly5lhq7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ly5lhq7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B801CC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721481353;
	bh=W/Gcmkw4KXbFWDCepMYsOlE4n0smx1TrshMOKjsqpcY=;
	h=To:Subject:From:Date:From;
	b=Ly5lhq7dKIYXtfLhBkoG19kBGjZ9TRSjuTzBiKBPTkqTl1lVn6vJKSSiRu0SUysQL
	 gwkHU77VXg6sovEfug3WgcjWgIIN+jO8dg8Qo6NcRpGtB1Vr/abpRVZNjttEV5Salw
	 uTUW8q89WkOh1zjujfRZInorCCHfZF6Y8Q/Dlke+Ag++ZahLA9t8Z0FhlRWiTtoQJx
	 e5NEdM1jnhgwn3LX8nCPeyBcmBqh3OucfkS3VObMbK8n8ZHgL2K3ci9xeNJHY/mcpT
	 KFNO/RU7cbz0ECrlMX5wYKIqNF3H9v0Sv83JFcX2VY/k2/aLHVKu6k1/Ax60RDsBMv
	 Laxtp8XEgDknQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A49F6C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172148135361.22675.7249900479894113701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 761b82bf65febee47fd382487a963e4d5e031969466306629ede1f7ff107a4bc
Date: Sat, 20 Jul 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721481353
