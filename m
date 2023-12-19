Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077A539AC7
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAYF+shI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 759B4C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703009896;
	bh=s9HjCd+E4DcwLjEm3GcntAuwrCH+nMaXfju/iYkCYiw=;
	h=To:Subject:From:Date:From;
	b=WAYF+shILfVfUmci18EQ3Gwz2FSnWzduU8n2JXtz5wGf7S4JxpjV2Cks0oYb8GvBW
	 OD7/09ZTAFLRdvabOazJY5hZvCCjhyOQZhPtSARbEHYeLICVQFt6oqJFUWRuSoJRW7
	 85qE1oP/L0M8Sr5WGhBksPQAjN+zeOXRSGcCpn3eBms5ieSQwwE97oMtKPZI8gGHur
	 zX8KZLlDDbze2i2vCyV3WESl3p2wLIBiTV24DgvVf6s8LiFGF7Tmf1X54glhydJipc
	 cAC0+8OjSWwhmjKoS5HZGaR0uxHvQULCBePRNhHYP6+xwWGOPTsELxvHoH9xzFjajZ
	 FqAmrNkQIXHtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD7BC41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170300989637.15653.17998646052578855027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc1430a94c1255c2c400a46d4bfb85d143df4146a24ed3768c44e437354c24e
Date: Tue, 19 Dec 2023 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703009896
