Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CFE1D63D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752863994; cv=none; b=fcKz2n1dSzoJhrSL9ave0HGaDjWI4KODwH5TnKX5EgOWCLBMddY0w8n9Ji/A2MtwIHuADs53q22ZL6VUIyFOUKGTy9YW9ZSDf8ZixqNEDVaZrMTmFsR8uNkh1MAxOxZhHTdfqKSk3ziFasv4ZGjREvcsCvzVHJClS75u3rlyjjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752863994; c=relaxed/simple;
	bh=M8abykOpym4ELVIz812ACg1cu3qU+6irH7o96Th4pL4=;
	h=To:Subject:From:Message-Id:Date; b=TnVmDL7Z3wl8S8NlW28nAZLkZV4/rLfD+TQ9QfJv7orsUxu1hoe2cLXezGEtSW/g/k5NPt6ZWAwL+NkSHvxH2aG9i+/SIA+dGIJ8PEwbNfMDyC9syePlODzTevkTjmwmNb4yPAWCmCXpTlFyGOCT87o6tlSHF6ERIQhu9OaGJbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBs4fmEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBs4fmEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73E2C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752863993;
	bh=M8abykOpym4ELVIz812ACg1cu3qU+6irH7o96Th4pL4=;
	h=To:Subject:From:Date:From;
	b=hBs4fmEEY3cuFKMUp4p7sFKQtJKhPbcH7EQzPILf4rbBstHnkDZSTEu86sTNzrtvl
	 AQTxL6v5duWkRDGkIrtqmeaClcGGzeMoHa7ZLz4LgDmTwID8ARMvJSbv7JuC/7cS0g
	 tUDMUaMHXYAn+TSP5wzDyoPtjcbsP7+1+aduS2z8nniYMOioRG7HaQDUpCa3LmInG4
	 8PBW2/TkxM1XiiVTTpi9X/FIARIGJFCsvGM1T2q4To9WgPWRfT+T2JpRd75Kw9f9Ay
	 Xz7KHS9y/Eub/PqqTXWBEq+VHPPcuCWd/PKkSB2EsBxoixC0II5+tXH/sf9UpVR3t+
	 u8queyi6vEQTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911CBC83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286399358.10062.10788172556684147031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757e1cb67272790c8367887690df452fd6bc93690240a1042fcdc66459ad7f81
Date: Fri, 18 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752863993
