Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB397F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 07:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713598823; cv=none; b=Z0evgy80Ggkmxo6bfoCjF+qsLQevwZvp8/dnB4Z24qQY65Y1NjYmD4fmJ0jUugKoIxQrVYn0rAo7TH4Kc5CNxrT580ECIjQbyIrVKmcD/XkIYtVWfyyeloypEMaEcGcgbjgDYM0IM/QgQpuBOjMygU19pTgvpI4Vj5fH1W11v6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713598823; c=relaxed/simple;
	bh=yJDB+8+Jm82ClAoNKlSRP4uPJZ5ZWgoqzcjx4EHd07A=;
	h=To:Subject:From:Message-Id:Date; b=h7pDjJNLmSwr1s/Mu4UhECAvuD7B+nxaf7KCaf3zNVooHK2bJQThFhJ6MugE5tGZfebCXF4I7mrPNbiwI/HZtWvrRU7JjfB8t78nW7/4RC0+eYXmWfmu+jQGujceDZ7CFZRjiEfXdq7cl47BmHBsFm+WfYVNk7vi9R4/4OOp0V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6/j8NDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6/j8NDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B26C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 07:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713598822;
	bh=yJDB+8+Jm82ClAoNKlSRP4uPJZ5ZWgoqzcjx4EHd07A=;
	h=To:Subject:From:Date:From;
	b=o6/j8NDAcTa6vyrIkj5aVpWGyp/XIMrNCQlpCBMoj64NFdd3Qfhb5yAYV11B9kDY4
	 R0vdwEPMq4lxrCR1mF8cYFMuRuQLfFLEsOAHHbWZq6MOxtBbBmmgOBzm2OC2POwCL8
	 hp2ygiGegZ0aTgEKFmnvQu2k7MiA+Zit5YEdNSwKXzk0U79G52CNct6pppJok1mQFn
	 +1YN0bYqJ6h3UkK4w6ZzcmAmEs1sCZZJkE2kI0FSFspjrKoRpuil4tN7+YEgZV15Wh
	 SqEQ6iqBKfdMgQTpU7vwopZrFgkxgznTqYvl6nu4bwy2z/iDmsWj6QT0VWrUVA5HeV
	 MCz1BRUJwP7rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC6CC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 07:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171359882277.1431.10658837460263285667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5b00696a227af7b082a33e20344adf17210827b2c182ba4246e1882c901e75
Date: Sat, 20 Apr 2024 07:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713598822
