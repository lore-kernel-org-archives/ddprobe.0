Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223851BBBE5
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767688434; cv=none; b=Z4MAIMXSb1ZVaTPdWfcIGupM/O81l5g3PN2KNniuisrKmXAV/tSV6JbZr91FlgdKo413ZpHwq+cVv4TX5/Nza641tKkewGkBe7YC5y6cXqBsT2fFZ4FMznqeeLY2ut8D+ZAk4uIZx9aViW8uU9MTgHqDgfJ+6wbd7QZor80bWN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767688434; c=relaxed/simple;
	bh=VG/bKjL2Io7kLLQhcd2U4mbZniRUIHz9fL9LJOJ4zwI=;
	h=To:Subject:From:Message-Id:Date; b=sVplPZaECcUgfVf9UHlaRPFrGVN6RPnQF/meFOFujPgOpIuGunhDdPd1AkIbP9jvYF9CW7UaJcPey5Vvg/oKVgp1uewqCAbtjvQbw/FSggLj1iO2hj7g3w1XfzdchI1UuBA8+4PDDQXxCG2ylS+90VjYzug4MAr4YVZK5JdRdqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3HQDkRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3HQDkRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40FDC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767688433;
	bh=VG/bKjL2Io7kLLQhcd2U4mbZniRUIHz9fL9LJOJ4zwI=;
	h=To:Subject:From:Date:From;
	b=i3HQDkRIaEzwnrZXxex3JBff4AbS12UIws4T3XNgDNI1leY8SsRdcMTd500ZlYYgR
	 vFKj96eUEc4WeKDWRXK0z9oo/XB+q4sXOKFqqKnQnhzB3V+FKEiNb8A/yK32nNQT2b
	 w8m+HpATEgRtUwmJhzLI3H0XosO8iIKzIVEWDEViW1pFyxHoi8kzbf3OlAL0upLHT+
	 mhTD5HkxIXP3JPRLcxOMF1CLe8zwleBbtrzjkViWmdlCM5JhLQajXdygnpLE4CRbAI
	 P40t9gJaIo6wdp5vpoUODaLO2YJlF89XdHcv1kOxnZ5bJUEsbX3W35vdsZqPW4xrZ3
	 Xeste6EDNLgiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945F3C47BC4
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768843357.16257.10784021315586241943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d667be06df77a598955ef217da232d107443ead42f045c80932968dc4c3d30f5
Date: Tue, 06 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767688433
