Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFE4180
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704B0C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664916053;
	bh=dJPDdF9enV+JKKFKvFCSCKs67krH+BecRWSGEiNKb2I=;
	h=To:Subject:From:Date:From;
	b=rFHPi5l438wEklUWc5tOZv4GIklpeajKpSqEP+VKyZuhjp3md+5/TIsR09rmtY3/6
	 QGvn3maewK5pnfTTl1eIr9rsZkwqiI7yZxquFEZjpofQinxU1k8lxm5qNQ+PnboE2/
	 VAB3vRzG7amUSTUXinhL8Bfldsbtzzz1HQlBHJIoiQu/VzadkkY8i6X82dphuBa/KX
	 lv5WlVsrQj5l1qgx6vazf7SGp1fYLSnmwws46yMS+QGXXyN1TyxBa5vWX/wg4Yc+gS
	 0djfW3KLhyV1HAvdaOYLqCzBYgoKs52HER+L51UDQS0RNFwZGEfXbw5UbSf6bnDhpc
	 Y5dp0L2iCJv4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54527C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166491605333.5281.17049003725195054830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfef478b8072d5b4bd5998ee701fd2e21f3c2f482e0133d4ed01a38eebccd2f
Date: Tue, 04 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664916053
