Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6158633F1
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 13:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9BD4C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 13:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694178848;
	bh=ONJk7CospIi0kfSkq1MaiDWQTruRo4aQeN+pbHJXrhc=;
	h=To:Subject:From:Date:From;
	b=FuSAoqHdqxBVNM6Xl3oAy0l5XpNFDB6Y3zyWUSFH9EyrPiTdRJsR+JTPpjs+1j9v3
	 UOZ7G5Hr+pIiZe2bOHQttB7L3EfDCEl2hGLOvnYE/RW81BrCPp/QY0ubnAmPPwfwOP
	 RcIHnfUc6VpJlGg9BcZeih9R2T5gyrTz6pXMym1xEEd4UjhYyMfKB7Aa/d3oHBNL1y
	 zNAqvuWHnMj4/r+Ei4BLlmvUpjolbGuEQJ6uiy509JmitUEYeh3x5raS5Tt1FK45OX
	 tSfPFxhahm60tfNG3avM9VtVCtUBE9LxBA4tEQQqKC+CBeNbD1tMhn68a4A5kjPJRS
	 rSrRWbRIC4uZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCE1EE7FF3
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 13:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169417884869.26977.15543862735302762377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d3b050c70736b0445e8ffee46a66d0d64b76eb223a1e851619f46fd00a817a
Date: Fri, 08 Sep 2023 13:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694178848
