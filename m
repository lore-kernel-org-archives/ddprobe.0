Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF557C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 10:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D33EC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 10:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661769652;
	bh=j9mcfCTqwq/03T4bvJJuNUqrd9sa7VEtuhcIOJ8xHyk=;
	h=To:Subject:From:Date:From;
	b=rkveYht0UqnkDenBDj5gxSWc5LQP4ghXA8eUCA/Zi65c0bPXmcNHgIxlIKUyz2n9K
	 EunUl2pt2K3RHIMu+DHtsHnQaNP+hiBb8dkFImxmlvmCpI7GDDX0dRBTXZBzIa52X+
	 pou8b1XqQ4Kh9VIgLnBaDnEuomJpKPu2mn5cUnZqlegp30ZKYwXLnevEMvFVWuTcPY
	 Zq0+HRVaOisRSH7q/d0HeE0nh74tFAtCeDV0/+ky+UDmmar5EOxsvZKxyvpEoKDUrN
	 1Nsv7HndaSl5Ji4H9ZZP1Hy2O7U1hi7eSLVVOIvXOnNmrQ7DfGDPlYTIC42OMkn6U6
	 KZYJ4evxqyyGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53422ECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 10:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166176965233.14724.11973407442405406830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 927d439f9806a5fb82052d153bfa4d728153e253de22a0fea968c79fc19c7afe
Date: Mon, 29 Aug 2022 10:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661769652
