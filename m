Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D494623
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 03:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA79C433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 03:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677554165;
	bh=2oPtRxvppM5NoLsNH4OEojeqogaFYBEX7+ss+k+h6uI=;
	h=To:Subject:From:Date:From;
	b=lUKhVybMuEiXzKQyzj1LZ4XSoV9ilfV4DmTvK+HiOP1bC4MLqox5IAxnejZK5X7Yt
	 f9IphOAtDuaRCiKojbdjrcMvTBsPEb5r+Wmoxjii0oxLXxUpJUHGw5bEmW2rhnSmnn
	 I+RVLA06vm0VTqTWk3ybVtdtnmGsTYjrE5iwwt9f/AN8YJbDZ5Otzv1gbLtQ5GXEuY
	 Fk5WHkFUSu6ETklDqz+sTUNmn9WenPtljKkDSLUhYY9mNBd5u/hX9XdSFeCGUNlAje
	 mXXtchvOJrMO4l/unR+XH7KH5ygNuZFUQzs4YP+1+af7cdNwFpYe4uSi9Qqtq6yPbp
	 AHB5p19sFHDiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFA8C7EE23
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 03:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167755416577.22443.6042256633663352456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29105e7ce0dab080d1b14e7ff3847b969ace18ac0fdd1778b098a69b6d9d0bd9
Date: Tue, 28 Feb 2023 03:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677554165
