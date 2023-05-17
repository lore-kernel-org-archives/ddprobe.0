Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3DE1844
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 03:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC4D5C433D2
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 03:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684292586;
	bh=gYsJg2Inab9JLl4C0mnAX08PXxzy8f5Bbg/L3lpHiio=;
	h=To:Subject:From:Date:From;
	b=CfuZPK29LpbiNCXmD6t9hHq5Kb6GM69jOGpE3DA3Dm0qVhm/g5d963/rT7Msk8TZ0
	 QdyJtnJyfARjDdyz/XfTswYVoVYgHRXOl8NaIipyJuAEslMFxzhhpzgmYGbSU5Emkn
	 X9d+jd6MRIYqwTuUkikeH9KLexqP+oAbn/ZKQpJmljlB/ygk8FqmL2NuH40AbarYxX
	 kRymy+ukx04RecevlPUNodOyEzGZ3vNXXM+ets510bgLppJjwDGo7KJ0jw7eLS4j+F
	 QvH/lxktGV5IfEpPkNGdHaEsLnGgzL1n0yGLIjrkco+sGQvDupHAqTwowGzsRdB8dS
	 pfp8MnQoEkURQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0CCAC7EE24
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 03:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168429258583.17689.7612529085391732419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa53d23320f839f866cc1808949034b76846ee4a228c402c7064a5501a97fedc
Date: Wed, 17 May 2023 03:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684292585
