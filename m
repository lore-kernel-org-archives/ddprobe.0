Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F2321FF23
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773056094; cv=none; b=Es2hHBRXxC6hZmiAfVlfjQWeXAlkwPbBMlr3uQHQrE1eo96Ub6cs37nlm0pVFHEgPINJU+xdokeiqX9RWzCabCPM5XbuJMKiwx0sBwzP9dfal3ucvlv+SRGjirBcb7LhQIpLr9z0VyOs7N913Gmgm/sP3gmqe/fHPHafLdvWybM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773056094; c=relaxed/simple;
	bh=wQtILnbhMa8M3giO7nC/Pnez+ZSAaBRFrHWBOoxTyU8=;
	h=To:Subject:From:Message-Id:Date; b=o3hZTIxpjvx0CxdPh9FY4VcaWZT2gcek7iscjPSfxfZ5GPRXcj9CzCnSnqY64R/CmD3YFfImNJ1qSHnvR78EeMXkAYdFTkNc7cJC3AQ24lrpHpKXdF7GyAytr2F04bq4SieoY1jBfU5Bq5+t47iH+ajaHXg22iDQZZfQNCYQdyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDl605ig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDl605ig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E108C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773056093;
	bh=wQtILnbhMa8M3giO7nC/Pnez+ZSAaBRFrHWBOoxTyU8=;
	h=To:Subject:From:Date:From;
	b=XDl605igvSs/GP4MFUYBf9oVlJ5H1UTAcaDL6vU+Rz/j9wP6xaI1wfxcHPyiWblTu
	 ot/36P+0CuCH5CAFmhuN8W5kyX8s/mrTvZVIizwnWdn/PKnl4z5OZDG/1ElH0e8ceW
	 o3d3E74IqhAlbnpuo1qRC711uSHKEL5x+7rdOsfMS9uRUOExbd4iTj/mEZi6Oqo8jS
	 wVgiaIJYhp8TFjSXA+emHiR8xjCG9gkDDcWU+F2IA9lQbC98/oR9T5MJS6FltJIPIV
	 wKH38rb8HScbrzQiSt1CuQi9U7wXnKH5Xt0ljqs5hIFhrOvROOTBzRMKeNXTRf+8N+
	 7MnxzYsgb1paA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E1EFCD9B
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305609357.10212.5001565640499207376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970eaef47b38ce1363887c1fcbf024908c21d21090679c843dffa8ec51edab72
Date: Mon, 09 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773056093
