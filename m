Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C48CC23CC
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD65C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670239854;
	bh=hbSCp+4/wahe2hPOYt2LeTZMRgB0AixnTN93cY+UCr0=;
	h=To:Subject:From:Date:From;
	b=fdhpEWd7BulamoCWy3VDKv0TCdFSmD7tSZwb0Dmwuy0JI8yeE1qj9X7KCrUR92RgR
	 yrpZEuefLdo28zDykc+sfPnXLZIuVWdicgE2zh1l3G35FVdqVFJQ9R0+3tHerhy+Z8
	 1hinHVw2svzrBUDlNaByTAMA+U5yi31egzKGyyaYcwgm0SJKrgq4en6I3RpY5dQCDO
	 5qMdaBNiz8ttRBe5KRF5Ge1BdkvsWvMWbC+5goY3v5xXiYKeuzGCdxvKrPJL/WBXsb
	 sALxgxFk8MbosN+32WL18dxFcLJU63UyCj/QHK5tRmQTDoK5QeLN2DJCOU7d7YU2Da
	 RAyXYoGy1e2JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A61C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167023985433.18356.2760925818514551721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7535b451007d7d1dc7ce31edb489ad3d9aa6bbdd3d13c1148ed0bd37f6a101dc
Date: Mon, 05 Dec 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670239854
