Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581384B0482
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786302034; cv=none; b=srLCKF1rnWgufkC8S8Vc7o2o2MG5AbESA4qbkqEO9LfzK1Ddlu1gKIbFhn5UY2NOMqxXE5n4uMH9FZd/ImOm8p8JxfJCP2dspznt8d0W0HECkvoNLcK/QfTskqiDk+e3pXc+oXECpmituYI/uWJU0EfINxvQl8WNw0BgY4wAV80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786302034; c=relaxed/simple;
	bh=zKYCYXlOyJHxMjujLgDccffg0iBuDSWxUbaoqx/GzSY=;
	h=To:Subject:From:Message-Id:Date; b=LrA42jXYsvF1uRlQufN43bzYgQuxqJ4wMEA/vyjcG4fapxxG7Cf4KvhP19IL7Y15u4cvP1nQlY9/50iRXv8PL6Kzu771MsZSTJ0V+CWeoXLlruUdgXRg+flS/WUDOYDxC30rUoY6USvsz/+5t8Kci6P3NDNWh0dXtP9XuygsskQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/WwDZmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/WwDZmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B3BC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786302033;
	bh=zKYCYXlOyJHxMjujLgDccffg0iBuDSWxUbaoqx/GzSY=;
	h=To:Subject:From:Date:From;
	b=s/WwDZmMi/eGwWAtE9NflllN4eBQLzPVWaKgq+y+Jlxgx+79GDhnIBbBCSVNO+dsE
	 +jCigL6zgKo79HE6C/RmsnsrjI2dfF74cnHSDmpl+S+PFokysZSjn8FcjRrYj20hr4
	 Ewe9cG0cbdleS/vhxbz2uE9G0mz9BdUNh4zW450skxihZkhJHI6aTN6d8J7FU73LkB
	 9g9vWQm4m0YYWMfcZASWi3NtlrpsFiMHE+pbKGbHEbYir+Hf7mzxTw3fs5Q8Nw1rz+
	 sjSh2Vqtv2LgKXVBoimZ8I1/3lNfZKTVe9Bk/AGXuw+l0BaiRFIn3suhaqQ88hU1Is
	 4+SEcpJKFpYzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A1CC5AD5A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630203369.23547.16338681120768557563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97bf93c1167b54c714980c6a2ad27c330b91e0a7ea7d7d9b38d46352c80f0bf9
Date: Sun, 09 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786302033
