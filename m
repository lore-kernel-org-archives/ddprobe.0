Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46556EA3
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 07:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 092DCC433D2
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 07:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684653666;
	bh=v1gQWfFEyMYBNcp3by70WXMTpJ8/ZZ/uRZHOF6bW5Uk=;
	h=To:Subject:From:Date:From;
	b=ZNm4Umt2b5wG4Vjraa7QhNjueJr2qrvbP7yVSoUetI0Wq9XfdbgaPLEJRRBi6BeFh
	 ziiE/mtfVK89voqUf3/Qf6mUXUtC8DpCczL0d/k1nJPax9bw/+q9XJPvfDs8AaIRmS
	 mvLUeF0v/BYs7NgZ7GhfVCvgvXA9xup7ljHPVwhONuyFqNl9+ICCpjjwpvhNQ1u7tr
	 2UKP26OX9b+ukCRSIJU83rvqy+WMpPO7V3e0ede6cqKZxlC/APfY+5GDcyfulJLCP9
	 Hg7dQTxfQB3EQfpz+pNe8+bANrQIqjX2D6N45mPDcxMrc9Xl2OBLp22ten/iKFHCLb
	 fvwlgA5Ef3vtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3775C77B73
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 07:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168465366583.29379.14210114300846040837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066524b0af6263a80ae99b8bc798f5a8d8c6d82a849327e910b780182e6ea747
Date: Sun, 21 May 2023 07:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684653665
