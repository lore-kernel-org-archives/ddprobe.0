Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCC324EAF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 22:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECB6DC433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 22:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685053506;
	bh=KKOioHcwDC7eYJF/7ThRII3B+Ol57QvoBBECksvtLyU=;
	h=To:Subject:From:Date:From;
	b=u9cuwwgwuvBiCbzI9ealVv8/hg4fqCycWg+3wEQiRFNrS71KudcPYBNAxeBL7u5oW
	 K9ks8x4LMqsCz3f5L5+gBVB4Jlmf+X8KYoqWKySuLzcx9IfIUPd7lnv11l/52+45q4
	 8n2Tfag4kx7foJ5mEDnBUNCC8yxvjG0TcsyJXHTzwbh2TR+FKoGkvoSeJVra/PJGRa
	 c6A493roD0Lizc1hiOYPHD/B2+xtOemzZSIAjmMxKjx87pfk/I1XGPz+JnzLFA/w5Y
	 t9ZadOFfBDETYqND6PTyHxX6esNX4bgHfrea1rrXkUjf8D4DK3VgOA+wE9F7foJer3
	 7E3ZXSorQg3NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD477C77B7E
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 22:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168505350582.12009.5507801349879207832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac9d60026092302ae79f6a1421d83ab40bc0f6675aa01f723b01b7ee786c7fc7
Date: Thu, 25 May 2023 22:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685053505
