Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8893E869D
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774354494; cv=none; b=GfexkY67l2IXuuURuq0CJFWRp6RNcvRPZ4lUHB8SmE15epla3FeUsr13yYT3ZttcZt+0vVrzRhQWPNSXU6QPgTGjNI25lGrod4Qh4WLVSbTOdyeDDqA47mAYA+vkgIzOMf4i1an5r0QizVjg/2A9I9Vk9mMpPTRuztkazUiuDP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774354494; c=relaxed/simple;
	bh=B5ui+JaNTDbkzIAjPar0yOUn2hwWkM6OoAv4XMJ6ICA=;
	h=To:Subject:From:Message-Id:Date; b=GwySuIRTWl6YeeWQ3bMhuOpIZENBLUxGhuFlwfThpOxeE5ZWqxvJrDeca/ny4Pva/b9de0ZQY4DVNFcjzKQqT+Yf82jgpeRjWcn4zatREztOv5OP2YSy6zqigKOQqhXU9V7xkdMe11oQQNLkxfHGEO631Rv+BumnIRvBuExYpTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOqBQcWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOqBQcWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B7CC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774354493;
	bh=B5ui+JaNTDbkzIAjPar0yOUn2hwWkM6OoAv4XMJ6ICA=;
	h=To:Subject:From:Date:From;
	b=pOqBQcWyapwNen50KVHJ3BAirp8YwfAPNzgNyNKX/swVN6hRRWISNi6rsJlFHBR18
	 oa8uqxZM8XcdEsZ2qhWlQRFjJpdiCFWIQeD5tS2Dgp66glIQPkNAEtLRh51mXrL+/F
	 JN63eB0VT2iaPurksv7H7tbR1+cEq5LK1YiznkKiz0SzsqRsnpH7XPoRBnUQ9m4wE+
	 Z5rhKnr0HZir1rsXtVGO//8gnWAWfLCqfgU0NSb+p1QZF3lOSpj4KwSK7aHJftNgJr
	 VS0kVs6ELKefMIIr6xSKfmuKFs4ZTYF+TXHPBmr21wxOyigoA1DBmfyD7KgF6GaG+X
	 Oywh2QsTd6ksA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FD7E9A779
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435449361.31628.833621540872568540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa7ef8b94476aa48b692e1fd24e0438cf0ed51afa3e39aa627448175f3cf6f1
Date: Tue, 24 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774354493
