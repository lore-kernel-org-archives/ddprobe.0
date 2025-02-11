Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB131DDC14
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 19:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739301653; cv=none; b=KN1dMtzJN9kxNJFeiIROc5t+Wq1h5DIc6sRtA5vYZog3wGgrFzFcr3f1B4+8i13fVF+3DtFJbCpwsKi21fxM2DH3vGl2x+wIm+71hRXlhbQNm5B6I4Cd8hJjhq8c5OeVun6K4O5DXM06N2PyXLjxnU1gfDMgwnBaEht2/Pe/xLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739301653; c=relaxed/simple;
	bh=6XH93L/ZMl6eam6KazWYUyPWGNELjpHnnYc4hQttdmc=;
	h=To:Subject:From:Message-Id:Date; b=SaaZUi6rvC6LOWWxWsktGDPRRtbHrNcIYcTf3eDVi5JmBFnGQTuSkCRpsKDWSSIi+jXf/TlneVR7U4U6T/Zi7vaESiHcg41nrwFxhJo6TdOn3FsoHL7wq2oZdSRJ2zHCUc8hR7nlKUA8Jk/y2jZ195SMMc8Cwc5ISo9ngS+6afo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVAzxz7J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVAzxz7J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB197C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739301653;
	bh=6XH93L/ZMl6eam6KazWYUyPWGNELjpHnnYc4hQttdmc=;
	h=To:Subject:From:Date:From;
	b=fVAzxz7JRs+5cuZU0vyFIM2QDaHZTK8zDbDPfYOa2K69daNRqdk+fXuKLTAbYXQuj
	 AXQ3fQWID9us5aWq0g24S19GvE0oFiceD929BBOWg55nkDTcXlUa9s2KO1s6rR+hdM
	 jj/OU5rYQBjmW7vbOx4Sx9tPqKuJ+XqNG9IgEo3bf1Cmvy4HXuzfi04AAppMCRpy6m
	 cCLucelUwBHCE1mcA/SpVgGYMBSrFK0nbfvHjbb/iULTU5y+jM5Cojstzei4hcqba0
	 p7JBIqhzFBLwYSij9ZZXzpkXDnZlstLdl2I8fIuXIOOiDGq+ZUjqx1APzo0Imrq/Sx
	 /x4wb+NhK3tkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE7FC0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173930165362.11497.14751974015318878291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20460ddcab6f8ffd8d1230c0bb6d61e314b03f1cbb0aa738e3c4870266d9dd6f
Date: Tue, 11 Feb 2025 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739301653
