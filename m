Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095023CF048
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774295094; cv=none; b=hoKYTM3pG38o50KJdzfo3ZBw0bjSWGjCuf9PvTzALtL7TIx1yyaDBCHo7EOUwMMp3dlC9p0P+PCXggESR045YImMqo8MEzVrK3ka6Owx4OjDRG7zMZIMkrRjiqLe9MiaVIkTEW/+vl6CGwcOsz6pg4kw2Td6BtN7jp+zCO+DJeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774295094; c=relaxed/simple;
	bh=cB+8nMPnyoOGkH8xYWlj7kEpDF1/YXeTYrhL4P9yI5s=;
	h=To:Subject:From:Message-Id:Date; b=i7fMZP+uzNImkwGz5Whwm2yRsq3j8H2QGQR59v3tKuvfJKGQAW7SR9Vy1uKEZUXDRMevO4D+IZGPbpxcx8kujHGiZHO9QuwEZ5bxBUZ7+XGtOipantbfaRw6V11c4AHG5kvODrToh5ep9jdGEm8L2yR8fDiO6ZUcVOFpqlC6reU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRX/uIfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRX/uIfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A53C2BC87
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774295093;
	bh=cB+8nMPnyoOGkH8xYWlj7kEpDF1/YXeTYrhL4P9yI5s=;
	h=To:Subject:From:Date:From;
	b=pRX/uIfh838/pt6enBXosYgydRZiTYtuy8/0yLLn7UxKopbAfVpVuk/fJWHKgFt8I
	 r1qkugy8kiZBAFLzXADa3BJsRN7IOvEQ044Todk4t12NXpKymJj9hlDo1SZzGU1Hv3
	 jaIchFpk7RLgfv9tYYIByCPxJ17T5R3NS3TFDGPAId7Rnk/piwN5Uqd4Z5lm/VyJ//
	 qNL3XnCcNSzSG6706giqYGRnQ4I7KdLaijilmDdmG3sfPqesKR36I2HEA7v3C7oD9K
	 7juQwmk+H9wEGd18u/ZHCPFfVhYHaHJgzW9C2/aR/FOkdtUMbKgHWtpF5jAwmuQ/w8
	 XWr1PG0tW5sGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951DBF483E7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429509359.7810.8823300916203087851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2232edb3ea1cf6d7b4ff4df5df0cef23c5312d180e1796582477bb999e7e1104
Date: Mon, 23 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774295093
