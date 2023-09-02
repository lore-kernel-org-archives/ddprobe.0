Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBC617EF
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 10:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EF5C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 10:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693652048;
	bh=6+zT6Cgz7JxQX8GqLU4Koegr16gyneKol+hPcWlUTKo=;
	h=To:Subject:From:Date:From;
	b=tyh1xVT+gV1sOMC1CdXcaUEFo2+hIr2C0DPEsnp5SX9RhVSOPXBH352/oRK9OSnjH
	 OSH3r4DxKBaQVjuyWy+kSOaKTFKrg84GRSmLd0H/ODdkLpqj7DfZ/FR2KZPVTkdZOk
	 0DZeG2pLofyoRRVtt4C6Gd+nCYmzjed1xJ3iJilpY1drTy1RD7Otqmakbx4LUuFKFC
	 iI/8umvT4b+l8c8tyfsQzgyNZ4Gaji3jEnl0crN9jzAPEsQmF3pz1z6SXYsjtTnEKM
	 EYuRHtvF4+32I/Dd0MiLWFsdVogCXhxPfJSHq0iHUUq3FEZ9eQ3QLksRh8puFyFZXi
	 0p2Ac6x9IDqKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A783BC71153
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 10:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169365204867.510.8208696782484132681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af6092d63ae22c1d311cb54c1892cb30b986d492dfebc9c5331868a7fdb0dfa
Date: Sat, 02 Sep 2023 10:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693652048
