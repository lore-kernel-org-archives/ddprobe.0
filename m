Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D76B1CFB5
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717882643; cv=none; b=EAar2dUoH0Z/Puc2YqQy4U9tgAj2J7nTe5lPvT0KjXdjD+PJZDU1F2lKxSwLUYv0NCQL8yn3JLUxLcJBVrRIa6SeTylLn7LtEKpY8neTXxsebSp7gbjVBjnZ5x4K3qxeN0kfpwMw2LkuRQGqC9Ek7Z3biYVkgu5xjELIBHitiX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717882643; c=relaxed/simple;
	bh=6IfSq9L08lYuJ58f2znSUtVsCKbK+lKnw50ZoFQVQ4c=;
	h=To:Subject:From:Message-Id:Date; b=HyovPoddkAmYF0sFE7coQbdmtEHwqSXh0m6nsqVGrjS/HRgZV6xZGCMQ1xwxfe3lo6/2u49Kc+KP95W2JvdrIYT8rJrB676OlvWiBjsQTEbIkjoH1dEpyThyosK0LaJTF1Iufzbx0S1wyw64ugi8iv3Ksw9Ulj26FH+le1QE1ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuUyRUFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuUyRUFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F1CC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717882642;
	bh=6IfSq9L08lYuJ58f2znSUtVsCKbK+lKnw50ZoFQVQ4c=;
	h=To:Subject:From:Date:From;
	b=iuUyRUFipWv0Et2SdO/ljUH7KWKxEwn9iFBUa8etIxulWrPqxtyHoxUa7j0fOJHYm
	 7Xuj7h6x8Fj2ejHTcsRRzVphiSt25iZKmb8L0XlsRBrHYgghh25gt2hKrwpdzOL1C+
	 QU2Ob/u1I0iXrLLESBeKx2rRjhwo7JaG1aJmjirDXdMGY2C43zm6pZ4yVPC4GrqgpF
	 DUkORE0hWhYCGtmTQpVm840PfoxwiAko0a/vqQ0OchHKmzLI7EauDn7SE0idt3sk2F
	 GK9HeLyU/sxshcS3Qz6RmT3CeLakYdOI3tEgcW/GthaW8CTMg+8WRb5vckexF9t2ID
	 4wA7/TIolNqxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2667C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788264275.26569.4067525332452046786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96744c7ceecf20b1d1f268060316e822c60c619ffdc8499226df7339d9146881
Date: Sat, 08 Jun 2024 21:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717882642
