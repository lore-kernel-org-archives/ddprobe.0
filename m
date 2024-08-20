Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4EF1E86E
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724188554; cv=none; b=TspLP4mohyWdkJe/6qtn9tKvhPuyXj2Nyh3lyhpsaGwKILWcuPZeSKF9VJWAMUh423HzUYry8FVDIcXBAgUO7WHffoc0LYuUNYwY9EjrTyc+fYVsr0NR8vhQ2aAEEYYz5ZbtSCjFuiDCbjXgpwHSowtmIIhpo86UQs5hWAJ065Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724188554; c=relaxed/simple;
	bh=//jZC3VXSOBJpC+XXc1QWIrzWCZvbHQKBI/77PksX38=;
	h=To:Subject:From:Message-Id:Date; b=T7aBnoHhrGtffcITDmhRYb40GEaOlOZJcuGR1yzsWr01HmxqAW0lix4cXrCRg+n2ZL9bncDQl9C3Up6GLYJf42Y4A2xlGno9Tnua3XUs9G9Z4t/Zvr4TrWb4nXwDGRccFLEtKABBl0C8xMP2hJ+Sh6+ZYr5x/UQdY4E9x30btrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ilca7LO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ilca7LO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD68EC4AF14
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724188553;
	bh=//jZC3VXSOBJpC+XXc1QWIrzWCZvbHQKBI/77PksX38=;
	h=To:Subject:From:Date:From;
	b=Ilca7LO8U6OAFmRlp/TxKkQ3/EkdbiJmwIIIAtr+vFYEpI/GISCbij39kffRMNW8N
	 Ak3L1SdkVX3NA8MS8w3EfsK5D1sGa6Tb2OFp6t+EaWvXeV2jDopWLq1ngJFF0qw1ZA
	 E5QexlyW1q2KbcUMxn3FnEqMSmOkiSghuGcpU02425as5HD2supcPgABa4N/9SVmUf
	 EyEAmQJru+ehNvGaKLLuH4jm/552QG/OCJgPCuJu+kCoJXOvULHPJqfZ+kHBzrvEwi
	 P+VIBjvmJO0NlTcutKPh4fxEHWBT4kY1TzaDfx0M3RIRbgxwM409UUZZuOojGWDVoB
	 8YU/76qy/xGbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3B4C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172418855364.13212.16508671513614483061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cfa765ab471eea86b92b4250c145d11ce2399a8eb4b86b674d04f2b91cd937f
Date: Tue, 20 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724188553
