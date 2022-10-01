Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3AAD2569
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC49C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664656853;
	bh=Si7Ag5VDNaA3egiXyQ7CKB5f8IW4Yu4PXVT6rD3YehU=;
	h=To:Subject:From:Date:From;
	b=MFnn1G/rjwFmxy+EWntbpre8lNA9BDZe+wkq0wMdDYbPbdlnY2oy2Oi/c8tfxwK8s
	 c5h0xkjUpZLgr161u85eyMjwbneK/mN6WItm5M+meJ61FGC4Yzx/bR70ieJMfzguCI
	 tOWZFb7WvYugeqn6OqxMCGp/6Zxb853ePeuisdlW0gd5CovYaDiBOaZb3qFxdfR8vR
	 hHqUJiyDDtmJ1IrKfp4hnasMKeF42GN+PhTIgBwrYgKfuhD7+biio7bXtE0qdNjyLa
	 +njnPRWopBmuz57zY3xftqx51t9BnTFAClGgktbcTqVJWUrMJ4vJSAxj2iYo7ExFVy
	 sj6r9T9j/d6Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58D12C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166465685335.2995.109885664926871929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c9807f122cd021f16bbea26032d02026840e20be57ef46fb209ddf667ba4a2
Date: Sat, 01 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664656853
