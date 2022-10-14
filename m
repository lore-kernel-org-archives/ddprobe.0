Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4BA36E
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69782C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665718253;
	bh=ilbOl8X1uIttjv0AV0c2GZQ5RjJLnIMQDQ4M9Z6VBag=;
	h=To:Subject:From:Date:From;
	b=puWpS3I9ITX066hKl7A7YjnNZ1JWL9Ii1wxqu1lJ91H3OFVwWC6/oDN1g89fkCdss
	 G+GFsEhLoh8HRe92Xaqm7zZCPo90fJpzmHlERQxaj3ghlIHuMtvjRhG+RObPFu8vgb
	 llA/wuh5P8CpxgyVfXEc0SEKKdOv07UHGKxTyxss56PiQjzw7fj8ZQiOUkP3Iri4Au
	 ELr2JK4nFvsp92onXGJTiL5kWYw8PQVolmAb6evaUTmQBLZ7U2L2BngYtzf4Q5saG5
	 uKe8zplVQEqFOpC3Lnol9KZhGvHjs9f3cz0wqukIe9EFDQH7XzNzIFm3U1NIUY9YMA
	 9QZRhPSrjXCGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F416C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166571825331.15494.13637686359209627810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a713697a9b6876d00cca3dc1ba57711b7d7ec78338c54b92201496ae6304c06d
Date: Fri, 14 Oct 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665718253
