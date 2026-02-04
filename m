Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2CB340A46
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770227034; cv=none; b=cJi3DXz/V89eWuyZlVTB4BtBVXSWQgVL/ddR2W19Wj+uB7+UmLfehJTYyGl8Kj0/+JJIQ30SH0P3NRDI+B9Hnr9Xr/lG4A1Jbc3RrtxSWVsSwg1u1Okeo7Qdk7WRntfsej7Hot/AZg+HuzYY43aJMxhKCwMRaU6+sEQ+izbWLTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770227034; c=relaxed/simple;
	bh=6cQQwLtfg5cjWgX5+T42Pc+oycRfZi6CI4uoYAoz7Ws=;
	h=To:Subject:From:Message-Id:Date; b=SeAQarBr/BamBrvqNvK703J/UVHPsjSAcYlHtj8WVBJzKjiNsKaR7c42BG7CNKgH1kXXRW2sWZEREjvXJJMn5We0DY9Fno0IPwW2RHbpWB46zv33j7OY0dbwRo3iZbxP1IGYPA9GSEsQMtlQIaw1OkHpenkLNu4OYJn0gqxtJgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPAuhTlw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPAuhTlw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EDCC116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770227033;
	bh=6cQQwLtfg5cjWgX5+T42Pc+oycRfZi6CI4uoYAoz7Ws=;
	h=To:Subject:From:Date:From;
	b=qPAuhTlwpAaodxb1bbZOIa67v4pDjwKA4VpS8F6MwY4L3iMy2s1Artj5VLI6qw8JH
	 fiu23nFCtmbZwcZ0KXA9uHDx2VpnBlNEtTZO3tK+wynDaTbh42sBquMgxQy588l7W9
	 meFyUIsgcMYjw5FffT8ylML5xqMaTtnxzryep5AXtldOrKjPhrMbZvGolfVdiBpsmP
	 CBFL2zaThVnft4p+Vn3i2Von1aqOGJ0BLlSDUd7evyT1lnxlXN+lzwUWJ6YUyEX67j
	 nQhP+0zcQzjohXCGmYwhFSEZNIprGRWaoGyF9QaeCqb6FM9wTBcxVViGLMLX2teFm2
	 Fb3B/FDxLKX9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6A2E83F05
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022703363.18950.14609146635950355501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e6d13a04095e47d3cd748f0bedc3bb23947ba5f167705a4eac5b6e3cfcc945
Date: Wed, 04 Feb 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770227033
