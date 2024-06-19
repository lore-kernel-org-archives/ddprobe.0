Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583F113DDAE
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718797163; cv=none; b=V9aZzp/X5kJ+sMXvjI6Mgb0457/NurLZItxqUhFjnRzZrz11D0y4iJEo66cm6/o/ViE4Bh+s/RL++d5eo+iVOGAKxnQPHVQPw/AN5ZO1MgsC1V5BP5Yn04cIPZlTmF7mGjx3s8ldKFMf/8gHhke+rnR0SP5HIRIXPT5/LZVOeN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718797163; c=relaxed/simple;
	bh=lcPs7P7LFBZDDV8muPN6Kq4K9BgEw5D72TQwYk4W1Vg=;
	h=To:Subject:From:Message-Id:Date; b=E5mQa/ib6cNnU33uCM1OJZAUJIBR2DiHdq4vda2uW+19y8RObKkkw4Xvx9bIUGI/4mRcLa1Tv66HLOiHcsYP74XH6VqykDb+Z25sAwJY1NKOzZxR8FYnDseaTtMjLjhC0gcFTNO1k5YlsxBNIKeBPH+xJWZ5o0DxIxxjjlz+EEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNjRyED3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNjRyED3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87CAC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718797162;
	bh=lcPs7P7LFBZDDV8muPN6Kq4K9BgEw5D72TQwYk4W1Vg=;
	h=To:Subject:From:Date:From;
	b=PNjRyED3h8YIJAxvZBtKKd8CNzHt3MgvBIvZ1ghBrYi0/JERHRi7xK2WmS7Q6nlLq
	 ZmEo6ObJyjwKROU2SS7oZSjVWhp1Ga6xSjxQjXf5JGQM0QhSqX92tIydkS34GhY1Sv
	 EdNU2W/vykW9XAJtVOpszRMQ/0m473rfzMw2U+bmDZRdo3LrTtF0X2Aa+Kv6PpSQeY
	 G7IV6ZXFqSldeZHd7xM8eFhI+EtVHAqAXHHEg/vmXacsLxGolZNRNdhcR7lRazo7Ku
	 Zz6WlvSB9BBYVL0hEkbeY9ydAimGdtpBGwgNARxQAnVBl8kdDDLxBN1ZI+s/PgHJkc
	 4kgekQL5HC5iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20DEC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171879716278.3794.6053575114933281387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efe37f2256899a275111b5b52e6742153ddc8794080c6371d99c853e2562a405
Date: Wed, 19 Jun 2024 11:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718797162
