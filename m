Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC7A3D646B
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789928434; cv=none; b=c6aGreMZF9TIoqymgFXuUk4PYOZ50WYCo+GqCyet1ImhIGX5ckAvWcgFRl4ApUxZOZsmGZ91ECZ2Wv0j8pXYow9x+8/g98gnS4HdEwG49cgowgPzw74shCsS/Mv6aO0Psvoew1BAYELSUr8fJDiTU3oax2r5NV7V9L1qv5pElMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789928434; c=relaxed/simple;
	bh=UVJpnXrU9UjM/ugQT0D9wIw5ls0fiP+cOA/hNuaSsUM=;
	h=To:Subject:From:Message-Id:Date; b=AKkKi3N+XaBjhvoI+rhs8fP3Hhq7AbSlhX/mrQxBetn7olnMGnYlrRDWqzcE259CBxZytGo/T0HL3EiZ9MO44GJmiEhsJRTCJuAWOQhAlQZOy+521GiIKIE+QtfNvxx8q1wwDpE3MR50MmHicKVHfKXWHQsiCDRXNWlyXRRw9iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gn1uJASc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gn1uJASc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6BFC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789928433;
	bh=UVJpnXrU9UjM/ugQT0D9wIw5ls0fiP+cOA/hNuaSsUM=;
	h=To:Subject:From:Date:From;
	b=Gn1uJAScLpvXRsOJArBRBHKG7q94rWqUNnIRTjCKPWrQuy2+J3F5zD67Z0IGYfrcy
	 /FhxvkT4EZ6FWKu7M2hxXlp4WZ7oXe9UgNPJda8nUUnH7Wk1GPQWQYglV6efuy6PY4
	 oKOUu7Rd7vIc23pNP/LjQ/w9RalcaCKU8Xx6PzD423dcwpP8FIlp/e6MvEuDGzIJmi
	 Vmnl0Yr61LSSOd1KQSkKdGXRfSQlxSLK2yuFc9bUAunIjZ9nixzUfy39u4LtwNJA2n
	 AnRRmc5SjOgJUC8hwxka8cWBDhy6qJo0NcjQgS7n8q66fHMy0vRVWZUtQHvlVEq6xJ
	 lI3JcOgXhHBWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B812EC982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992843374.29727.14903706636898269926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68fb4c9b2c278c6052eb97595606e99aa97ab01b3bada611628ba241a65bcc31
Date: Sun, 20 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789928433
