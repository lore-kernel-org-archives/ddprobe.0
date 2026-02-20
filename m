Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401D72D97A4
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771618494; cv=none; b=Oa8+kzEy4RQwF73wD1d27oBIgxI/VYGdGK7IsQ0jOgWhUYJRKlB4aKpyhTxJ0Uw8VcHvZXJrPwmOCHpThWuILW1zfCv36jOBZj10tBd98ieZEXltxnNIw0sOlruhGUc/F37Jrnhxb0iaaJ8stPyAdl90vU0EslUqyluu2vaJry0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771618494; c=relaxed/simple;
	bh=WFQOB5GcTym7aQ1CAQBHFxXJnFgGiVw5dt5Nzb80gWY=;
	h=To:Subject:From:Message-Id:Date; b=b8JJkuShqE5YHrgKxfq4eGOyivVG1o7iVtqR6/gBdHcYaMjGugnPCoKYSNLcnC96fZAnMln7w4iyAtbk44q0nC5ynzQaAw9eTYhN9QMViB//5bRA6B+JqqFz9cVJ0YLniTQlYNVdec0gxKbg9Hyih7+eIlFYwW1XJvIKRgqMm14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jwkm3NUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jwkm3NUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9661C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771618493;
	bh=WFQOB5GcTym7aQ1CAQBHFxXJnFgGiVw5dt5Nzb80gWY=;
	h=To:Subject:From:Date:From;
	b=Jwkm3NUexEwDcqUJnaD1rwll1obFfVATPAP5+ARK5DILSIvcgBNviPROzSz/1Cxtq
	 li6FKL/Xn422uFA4tjtRntrkeQyoE4IsK9yPHlC/a5dtsIEciQey0gj4L/kS27VWdY
	 JHyh0Tpv4UdlKuc/6PzcmB0VOCyI7QUC6nRxfGxXgKiQeicrjiSawVQdnLUOdU2soP
	 AR8uDh3bWk/xcjhVHbkkRsbY/P5H/oRoo7Ebl5x2ddiMiD9eSAs4jm3jM9pOoawBQC
	 cRAf+5Pu4NcIZ356pmxBlx96POoekEcvjivphnM7ndBWCQwVTdDfTfqcufT7hl5LxO
	 TCKZOw3WAPikA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AA6C5AD69
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161849361.27181.4290318038574652328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7988fa00b8df4f1bb16ab4198979fcca763623aa906d7cdefb4b61ded9ab5349
Date: Fri, 20 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771618493
