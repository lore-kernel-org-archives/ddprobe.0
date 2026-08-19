Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8CA47F2E1
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787152834; cv=none; b=p8PDOZrwBC0eA0TfmoozbCvvYmOgVUlAOdKvUCpRTMyDgQN/8R919N4ZhxEy/FLQ3+dE6ZSS7yksudwolOFJ/dUYgzZrcXz03oSq+3uneBC+P7Nd/b/aiougiIHEaHbBq6LyFdCpLLZYrmn/49ci6wDbzrMCBuxbbb64klEiNmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787152834; c=relaxed/simple;
	bh=3y1Dh7++7Fm/Gt8K9fabWOiroT4ZCYqcVLZ6YYb3JwY=;
	h=To:Subject:From:Message-Id:Date; b=LgNE0S6A8dn0ZtXFEq8DG2LaWYzzNRDEdEp55OwRYv6sNXxrILSjUmvEYwPsyZ9YwhFVUcCFc24c/n2KHU2idelctuSwX+n3MjDv5XiDZ4YGJHuaHyw1lopWUOxBS0QbnlZZRXW3X5osf97fCuoadoec/Eqg7muPKxmR2/rmq7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwjWG7aA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwjWG7aA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE0DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787152833;
	bh=3y1Dh7++7Fm/Gt8K9fabWOiroT4ZCYqcVLZ6YYb3JwY=;
	h=To:Subject:From:Date:From;
	b=cwjWG7aANmuTN2QpNfH0uckEXE8DVP8EgyaIRRWlqVOfJDvP0ayT1zw6EhutEWduD
	 6zlAG1A6k8bQGwLDO6AjoIQrJf8/Ik7XabKEPQ64MJAjTzZyJBq7wDbmJ0FyEamITk
	 AZqItEpmYoID8KP2ZUvFrnGt/5hDZbsKh+F8E0IKQbApxZiYnlbGeLI864CcjMTELa
	 TMWMFcf02OaqynFa0uAXbO4y93zZ/esU+I7kqR1VPg+7bCdWDsMZ+PTQ2KzFmKir90
	 iuQLUzvE/Ka2+EkP72g4jkkphXQvgCiBssZfdvjSMQKHo6rE8yVdxSySXsBwRlkqSO
	 QCKiqH+S6sBmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B791EC5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715283373.16426.15509904137591873396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a39fd79641b534974baf449a7913de7332756fae52f0d56356994cba3aee478
Date: Wed, 19 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787152833
