Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3462E6FA1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 17:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD200C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 17:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674668585;
	bh=eiPuUOHKN+jtQFHoK6JGk7S58jl1gSFZQech8IrMOps=;
	h=To:Subject:From:Date:From;
	b=Q4R7BWhZdR25hz/fdl8r1wdanKTs4pKphk8vDhhP/5fd8bEUo82lNxn05sFC4EgUa
	 NK//W2VtXAAMIW5/VbZUcJPloP3G/ypSQOzh+JhCJjVt59jIvqYUhbSIYoQ6S2YLVk
	 dA0dkYBYWDiKCA3ygqBKnOBN7+dKw7oF6bjB6YjtGUDP/YruzpGtn2Arbs+WlDBB9+
	 iGa1C+IGO+juVtlGNqo6/GFMaYIotegJDYnJGDxbn0iPpLkw5sHbHlV1Kuc4rVmjP/
	 E8hb9iNBTSeWKeMsLP0bcVAAxrlgKDF0Zi1I7bESntH2oPY5JasEph1wIKzJfzHkOS
	 zBaEiEuqExAEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D68C54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 17:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167466858573.26389.3465926984691802464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b13cc78be82f3cbcb9bf7bcf7584584b95ec5defb88989b8af67ef89a37dc0a
Date: Wed, 25 Jan 2023 17:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674668585
