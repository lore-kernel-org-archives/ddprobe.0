Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEF11B903
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 23:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2808C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 23:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687389188;
	bh=XRLDAspw08O/N34JhJqR0jTVXFSW+p3PoWESkl4T9JA=;
	h=To:Subject:From:Date:From;
	b=SFQ0o/UecHiuMJEakMcPLg/3w1qE+3dAx+/hR1KnesejYaTF7kQOfjUCpL0dewzff
	 gl1Hq+oFkCWhaiqh6DGHvXCVOdRdsfQq2rL6dFv4+D3DGxqBq3QDV56LUFW47DTYZu
	 CfhcRxMWcclwyTEJpcTMaF+FyFiw1aXXuglnHUjMaqU1hum+pVbj/U5XL/GBcoXoib
	 wnZ22jNgVn4pYSQOxN4ncxWFOwkKl10RhqSXhfe3avWVOuZyqXQs38ZYgwK0I6vwv5
	 rqmNLQBtNUiiWYU5VdyxltJkvn2YAfK826psLZT+W6MXsHHCywG1WmZcXSTKDJ7IzL
	 PNmHUFxSj9MuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CD9EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 23:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168738918868.13517.17923033250648550054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2601583ebd736adb6c8e32c50c88f51add515868b20d9b80c5ef832e4d1ad229
Date: Wed, 21 Jun 2023 23:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687389188
