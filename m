Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCB87E1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B508C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664274053;
	bh=/gtycmbaKs9qJUt2oNrHgD9NoZ2VeZ5grd+ZdhXakGc=;
	h=To:Subject:From:Date:From;
	b=pl8Tp0mZi2kplxomlCDlYJ9keGg6b+5j5rLe7Ea8ey3LCtpIUTkJwLf/3JCGxvvtG
	 bRd+/rw/92j4cPdIlCCeOMhoeWzFwixwY35wLh5QQwLq3xk6xRmZ/7/YSFa8E5HCoM
	 0UbWJbtnBCBWDuqUTPx1Jj4JZu1CemJAV8Wt1e9uej2mNvjz9OFimlgAfsgCsX882m
	 zIZz+8PJx1LbuecaAf8A4YZSfH+eEhiY118d+AcP1aBH6Xc9FvReVegeZfnZ58Iimk
	 uhjfPmcqVhlizmIKvpgNSbWLU/HSYuSF/xkENasmOhmbiXkJJ//1eRlA4hzcaABYIy
	 TmpndLNI534gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 510D1C6FA83
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166427405332.21130.13025625695842025479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11928fa67fb98c7b1a2e2a8b591c704e5e6078ab38eecfe4b82c933e41f9451
Date: Tue, 27 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664274053
