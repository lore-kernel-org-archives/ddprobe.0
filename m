Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC961917D0
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756390194; cv=none; b=hzAoY5wMUBkem+ORN3NrTwOON7Nt+31F/eLcSu0H8FztZRxO3wb5iFI79XS2qAIgO0J1Q+hE2JiAUhCBFlzDDrY4vCFU3cVufQuWnrLsxhVtn94Tfzwg0xdw3jw9c1Q+F4GlkPbjq1dK1Ana2MeqO7jnlbF1hepDRewzREQHVeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756390194; c=relaxed/simple;
	bh=BHoV1i0wZrTk7C7NI4aO7VWdUqxEfWXdw4HiN+LErZg=;
	h=To:Subject:From:Message-Id:Date; b=aw/OsKzpPYoAFSaP98L050BENTBv1b/S4N7yPzGUE1NjaxUPnkuozAlkoQ91Bu+NT6u02rtm9cpLRUXu26nFZ8LLcdVXfh0iQm9Rc7kkmNJUUQtWe9A9Ge3HkYhjiiKMTpwETkPtAOp/yJDd0FfoPMlm6eOPncpjtfGHoWGnNo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNr0EKhE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNr0EKhE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31D2C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756390193;
	bh=BHoV1i0wZrTk7C7NI4aO7VWdUqxEfWXdw4HiN+LErZg=;
	h=To:Subject:From:Date:From;
	b=bNr0EKhEQFb4RBqs1sqnbC4fLLqLCaqOKmcEEUDT2nJbFXG9CnfA4IXItw7H0eFnO
	 ZAo0mseSrNvEeK8PmrjKj2H5v9uC60Nn6oCYKwqvgzgyTswB7iLpfaneYq8e1z8joW
	 2rvB+WTVfDAip40Cggji+vA8FJj4XbOjgJN01ZfbXNPpjllrehrDmrKmFYuRbrGKUc
	 /BqlW2TuWqMVG5xis3rBHhxNcKNcK9GSbNXLeBCrznbk8F+vpvYveUUhQkrqxdu+Qa
	 89ezK5ZjnmoF03dQ2xnyL4s6c7FlAvuxCA+rWnkIypedKCmo750aS4MtVzPt0m1TeJ
	 dmuqP48GvZT/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F64CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639019359.13653.372839828384322890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2705b1748e5dec3100f75f0890c0a224957623d912fbd9bcfb6d55f031989bd5
Date: Thu, 28 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756390193
