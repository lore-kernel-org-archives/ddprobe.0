Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB87828E1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E2BAC433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664827253;
	bh=/Lr2Wvm9QjP6hN9iSCoSMb+3vCeOBg9Jvr1iaISAzSA=;
	h=To:Subject:From:Date:From;
	b=aPa3KdmxUlQxUi/uvaNqkqhJ2+NI/+LsYafggnHBwzWuDlmu8+ZBgWvmZ/fm0CZBw
	 HTQoD332cliHQAfHoIyLBHrluEyUxlKVM80zrcpc6bTimB1KIeyqRcdZn8Ap8zrBJL
	 a8RdjmKbsqQnN6aG8skHvyo/Lsu+PkPhJM27EwbBEwjZyTvyXj59a+P5jgtiEmqVQ1
	 tE9uE970M4WJb5Jr6mHZZhLDqtAAKvE7rX738joYGD3pf+FMV3O95wYOxk/MdTxnu6
	 gAb5OhhiPeQl6fKsH7SMAEyFAcFh5E7/0RG8Ql626nkWR23Tbcffek6T3RTiJHgqtM
	 56ri06tdQb9xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D23C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166482725334.1013.9919871299939204997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adee998a751737ea4eec63658402ac75e555f201963db968182af8f34b63cf88
Date: Mon, 03 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664827253
