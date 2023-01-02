Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91527E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87077C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672621287;
	bh=X39w/f/f7Bl72bAh/e8BJJuGETWBheZ4zl4fEDxsd9s=;
	h=To:Subject:From:Date:From;
	b=DaGEMOsCJrjZpa1i18TopFns+lHAqI/9Z+jU+/Wj/AHf35qNv3rqKbzJTMLydMkot
	 fUU1B3g39pulpKayjt6M7rtusZn8lqMJrQ0lUNkuErbrpNAZZjgmnneUzqbbwzIui4
	 1dSLFNXNkixIvtYharFPh1plDMEQC2SdtYQ+kZdqNHB/xZhQlRSbn8OnhPocgHVzRR
	 nXJ7es5B4XG1YcHrjdPIW1tmlJ8t4bR01wXugQ6mfWCnctGF/ZPQG16Jj3ujzw/K9k
	 0YQ1kYU+lcZY2RcTaSOQSh1+dMLxr1xl3zzOe6ofK2QSVy2UMK5Y6TTni9sEcKfrMG
	 oiIAXjUTahTiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A29AC4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167262128742.26683.11261848552979518415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b024002020d2d7ed9d70b95efc9a42894bb73e7a8c36b75a050f0e8e5e9fceec
Date: Mon, 02 Jan 2023 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672621287
