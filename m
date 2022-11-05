Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA4B7C
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86BF0C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667681454;
	bh=nwoap9NkvNnnsQXHCj1992lYRCjHXe54PMrC1pBWwwA=;
	h=To:Subject:From:Date:From;
	b=aQ16bJHyBa5yFLtjPwTJPBZFhG+K0WOqOMdeRKXqWYTPJbGo/zRtoAVrTPHWN5ELK
	 6VFHDrTRqjbtsBnGkL6CLiIq0JxpYQJwCuDJjoDcN9stI10gwMdQrpcAjw9YzR1zVh
	 17latqkq0Im63Hv1jKX9Nk0D695Zv+sL9VrViDbEM/vkeXcuCLMnpjD16yc0KPCR2G
	 tlPVU+oGFBDGM4PnSHAmhVJXN4ZZSRC4wesh+X9H2XUF9Th8iwVS0qXU8hyEk4+etv
	 d6+MFqaaDcbIreOpbVn6SYYOrvARpLz/n4fyPqPRXv6SOMkfqvG1qkhsCByi1FdjBH
	 iCat16k9b4J6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66BE7C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166768145437.26791.17188827646811109955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac347c713810338948eff2aeae96528ca040dc8fbe6739fef4311c017fb6e54
Date: Sat, 05 Nov 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667681454
