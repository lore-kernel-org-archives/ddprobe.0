Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C748623A2
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 723F6C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665471053;
	bh=JDJPlP91ek312gL1nhHHfy2OWQJ+6X75K8x/u1fIt7Q=;
	h=To:Subject:From:Date:From;
	b=FU7//qo/vySsAZHzQYAkX43AzSlIlGdYYrafc4LA1Z18zLNF2mou/hLrhfPlPRJVt
	 egfKGcb6edH2a3XTdWXf4g60qGTyfw+Zgx3W61O86xj1urHXxuuMO0iYGerCRPZXyK
	 kCstkfSaox8pEfXnVoPaAJWb0P7NL8stDa3+Goaf5vvG97aYOKasJP8Oo769ilinZ4
	 +hlE+vIFp/KpONvFWWwlPaAhGd71x7vgXer5IknVbwZ8agn9fWwM379XLm29Dl9H0D
	 NTzahPWA3T9/6nYKq3YzahZlrMMz4IsnlVGmcA3xh5POu8qupKq4bIJsPUjXyH/lv7
	 2LMvBAwZd872w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53116C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166547105333.14554.11526421375934117383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74fad2c378c721828cad76a4ede7897b7c1fa920098c53863e4314b2cbe31446
Date: Tue, 11 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665471053
