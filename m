Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD3323B4
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 16:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1EA2C433C7
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 16:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692030788;
	bh=BCrKHBhcTG+q/SvDK9ruUwyQo+8yUVdixxU0przchS8=;
	h=To:Subject:From:Date:From;
	b=cLQAp1HmZ00ZlJA8yn23UwkNH8VpiWFod4Lus9IqJtsZvc5Z/4uDa1ILXMLJXxHDn
	 igfEN41wjbcBQjnMzyK+zhS3I6pKnkkO0OKC8/m8318biGAqIWmfYKu3lSNqJLivpq
	 39z7jwWbpJLMgrd3P6ahpHJqLwM+Zd9ECIjU/bJGSp1xR/KOyQXBnIJDpKqq0TVxWb
	 qY2BdqIZgu06zC59+o1dZ/ocFHm7MtKDLy7G6Ryg4JRWD54+FJtMMLNDmXUNEniQRD
	 NQxhOXqzLUPw7tXVhaX3f5n7Ya7snrisp33O1aHYbGuSk905VKBDEmCSXINK9ARaYa
	 3EZEUw3w8BjuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5BFFC001DB
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 16:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169203078867.7064.10744515411915240854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae1bb6d0cbe08c67c96911c2bd70d6316805f139840ad95464cc6ea28afded99
Date: Mon, 14 Aug 2023 16:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692030788
