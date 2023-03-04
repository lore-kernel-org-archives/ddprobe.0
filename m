Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3313D15B8
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 01:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6502C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 01:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677894425;
	bh=wLt/GCbzKLMatWUg9JII4QzceqgF1FzC0rRERmTIpAM=;
	h=To:Subject:From:Date:From;
	b=u6Wt5BnCd2oOdKs7OWPgNwkOvCksfvQmo2qWYuYdqXNSUN7xx4T2+r20QNMu9pV0n
	 JR8BLNgbq8r0djO5bCWpv3awG93nuU21YBbxoQZx+3nqxrPMCCxmWV7CWG1JOh3o85
	 phL8Sgm6iyzNbA+x5Dv63W1dc6ULDTadMvvGyGVzVGkkm/+zrX3JASFAM3KGsXrQOs
	 68l42LLUiWnsi1mNZmVUG6E123/E0jkLZ7Fh8vQZP1eqr+YP0C16Ngex7XYQF5loc6
	 WfSPW03NzjTQMKdGE99o33LSwjXWKyR7pNNPkI9LMTMWAZvPg1YMZoKNvVWyOFjVsM
	 W/z5OEvQiEFHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B5CC61DA3
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 01:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167789442574.7060.13309027876709886302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d4249558961f398596244ade61b381f0da5bf2f11ef02830a3ecc99f94d3d3
Date: Sat, 04 Mar 2023 01:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677894425
