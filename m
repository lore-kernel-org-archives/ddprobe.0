Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FD330AAC7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758277794; cv=none; b=SIjSyVP86xDY0xshnT7ga9uoe7O1m43Py2NQX3N77YQpNwovO0RMt5ohFuS/VkNPDTWVS7s03rxM5r2jsLLM2coEJGkWLX16mbCNivlY+6/MpP8XGTe8Pyek/OdTcR7NeBOELT+MtBKFFBu0BcFiZF4dfIZ0nLLB0suw0eq3TY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758277794; c=relaxed/simple;
	bh=YKwFKbfQk4QnIEBPjm93Q9Dz7Y0BMEvN0lvfIPPNfUc=;
	h=To:Subject:From:Message-Id:Date; b=Xp+nPx29YkREzZ3922OwViZsoXzNeNRdJcrgtl3Tevh7QJZ2Yd3jJ5+h0A/rLLq2eeI/mTo6y7r00VcVaGtMj85JFM8hNfqJwarkHg+qSG4pUOlOQzH+LSTZnLbFyJuMq16PjzkUuSdOLwqeTtDU4Ziyu8Q/vebwKwQ7rhT951I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcuzDs0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcuzDs0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAC3C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758277793;
	bh=YKwFKbfQk4QnIEBPjm93Q9Dz7Y0BMEvN0lvfIPPNfUc=;
	h=To:Subject:From:Date:From;
	b=XcuzDs0hsnaelaQwvXLK4i6svUF6pjM5SqwWB5aqpKoV5q1Bx2tyZWRgCEbr1TtFA
	 l7Y+2uGIvwznWddrPa4DTVk9/VJ7vY+TeZcSjoSRjSLQNiUg/FH+3fyV2xYsCuf54K
	 F34sR4oAqRnO8769bXsKnUz5OvboTtfDCxRMSy83GQPcV8YJ5i6G8vd7olH6R5faN7
	 /UszZRpbT7kzQbCOsYRkfhmwm/tG0WSm8dDl0bNC5HF7tyKLIs+PRh9gH3gfnDwSrj
	 2TjbEMIJbwOtsisi6MTFC2TjkM2UAfajcKF6liprWvHCU8D37eLU8g1o8A3JWrszIH
	 9lS+JulWmlHpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C252CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827779362.3051.6283335950424356439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfb0fead4e94bbd277b9f56d9f27c27af8abf1f721effaf8488fcd6f54d6265
Date: Fri, 19 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758277793
