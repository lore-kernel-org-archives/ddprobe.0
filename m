Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B51219301
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759519794; cv=none; b=g0VQT+ttTg8P1eTr4S+3ef+T8vjLcDnRLsxMaQNMOorCXqLa13PXnLZf6+mV/7k6PIyaHpSu3e6AdtX2ZU+oKCVspFoJ0FaeT7QUs4A5Mv1It5mMitbxnJ3ALvf+lERlpHFQspxj6TEz5w5GP0NW1v5Qj9g1JV0rdwIEyN5pHAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759519794; c=relaxed/simple;
	bh=w9nXEy1g3Hq01xRNVGAkLuCRd7GrWBhddU6pDX/SHqI=;
	h=To:Subject:From:Message-Id:Date; b=dQmINF7gxgaBk0fN8vzVjMnc6lRPo53wetfHZFayQjnKdMpu+5hbCXA/SB6s2aEteRXeMj8VqbzJCCH0usQ68+5wRbVJKBkldt0U/aX4tPV6EE+Ug0Nc5SXDdunyKGHjfBdZ+HhUFqj7dUKplv+XCRZo2IqsD4cB5jUJ3TdrwnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKJjePYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKJjePYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6101C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759519793;
	bh=w9nXEy1g3Hq01xRNVGAkLuCRd7GrWBhddU6pDX/SHqI=;
	h=To:Subject:From:Date:From;
	b=bKJjePYKwVyB+6IUYFVB04yNZLIOWfQtuccygcCnTwLHBEKYhJ6V61LXBG1NLeiTU
	 33XmUJOay5qTZhK349ekXeqz91bFZkSuRhy8Qg7nfwgq7KVY3v9uyRlCJmd84egWQE
	 fx3m3S6OsXK2iOnefSrpD142MKYM7Bh75l57Y/dqcWckuGylWGkT6dl7hcTWzf0hND
	 rIlVu2XWw3O92ewZaxa9YBzT9MAtZnhsViiN23B31I+ZaO4hKlu7dFtEOkEzcRnZeq
	 Gc8IHAxXmaGssWlRJ26rVNfkneU5+DXy6lV6IElLX64cc+Ner4F4MSCFnE0Qglpo9t
	 zWUouIONeWoVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94515CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951979357.1188.818514261402073356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f74932927567363d6f78e333804f3f447593f16a5aadae4984a40c50b676e8
Date: Fri, 03 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759519793
