Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B36A3E120E
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772660694; cv=none; b=TgEYepCq+utlBONhB1yNCeieSw3EWEiwg/nJsJidvJqJ2Oe+5TR/oSUZk1EmJaQPiP0c+Q4DViD7NLvvNIBuYbRNY5/47V9gosX0ZCHYJgN/o1Oq3H2Iq8mW+HyzDwV/aj70tknamqbbT+a3ftjQNK7gJt4qO4IlR0kYa33+6ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772660694; c=relaxed/simple;
	bh=UhABi/ATPGZ0bQ8yzTDoK37KlZYDfJB55Jk0mUGn+Xg=;
	h=To:Subject:From:Message-Id:Date; b=kxAAO7QEg4ziehfEPfPXFMwpstcCwK6FAGcJGIuUNCtMrSzVn/U9RjmIc40WhdL0SL+zzdz8xHan0hOa8q8ZOMHM+wJwGfhMn/bxDvw4mtQQFZk5E67XoERHU9fuzfeltf8HgaGBpI4ean8sFE17c/xu2NQSu1CXBb5E65Uuqpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLOhLH/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLOhLH/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF986C2BC86
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772660693;
	bh=UhABi/ATPGZ0bQ8yzTDoK37KlZYDfJB55Jk0mUGn+Xg=;
	h=To:Subject:From:Date:From;
	b=lLOhLH/lu0ZRwi5iAbA/2yStcjA1XZVaB90IgQuc3P2P9Db3MQSDTxJLp0R1j5ddH
	 hFCKeVxBjbZF0Ps4olBY1slCSSuNga9wSsuX6M+4a8bzGG4tq9Hf3n6DQa1RkYa4Ad
	 ZvMvOZlTTRfoBmPK64xZXt8kPHYzpjn8jZ30f2nO+XxfV2JsfJrDoqhUrONGbUZvJm
	 RPgyxJPIt/KXsWbtRdpiwoiy385mJSpasELywF1zp9sxv+uL/Ky7OcE3egDhinABOp
	 JK2UxhH7uE2ECXWHyQc76w3JNWX1svse4CPGdheWbvpuxrjslMHBD2Rab8N123J0jz
	 uvvOzgzkgsjQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6E8EFCE4C
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266069361.1997.2167664917054282685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce21ff095b6251d981e2c2512462285ac62e06a9a24108c584dc3c9aec108da5
Date: Wed, 04 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772660693
