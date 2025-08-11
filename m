Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA63140E34
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754889594; cv=none; b=F5TDRRUQF1sHE5dbh1xbu7ocDrs0Ek+pjrlSbDwRHAbCzvoBgW+/1SzZXdTlIAaUl0ujan2QA9wd8go2Qd0Q90dV67gk3N6nKAJ6AvffWUxML/VAGObEU6N2c4tazlM4Pv8zPitSrND6djh1ANToTtHqMg48F/yRdymCTXY6fjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754889594; c=relaxed/simple;
	bh=XbV+FcPBZuxwSi5pbz7DDxpx1RdVtFTUFnJ4dVw+PB4=;
	h=To:Subject:From:Message-Id:Date; b=DPAFLZmbSw3sZPWCWjvQaFIFp0onXl0MJ/v65zqP+XW0wNp+cM5jijjKqwe4FBFt7OJsvIlkf8H1u1GDsT+/M/UvXHtEsQ+DaRRGjs2QfE7SslpYPQGB/Uw4Qjes6bUmF8hqB3l4QRKxhJoWq1vd4ltLqMUg7TTKbACnFNfVDYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIW4ckJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIW4ckJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5C7C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754889593;
	bh=XbV+FcPBZuxwSi5pbz7DDxpx1RdVtFTUFnJ4dVw+PB4=;
	h=To:Subject:From:Date:From;
	b=oIW4ckJQsbauqPmkvOB9Kzh7E6FViStH+Ap5Alpuk+DJMUKMn8L7ueXbkN+XQi8HO
	 3+muVVXbxlln8Zgrts0Hdl3tDplEau3MztFevwlsXjFGIVNGmI1o+EQTk5O3K7Um8C
	 T0X83mexU2O+utboD3RcJzw/Aqahtv/zYej2WvLlOXY9H/JapollotmLJsIehHWqJE
	 1/TT8jzsfcr4i5ZkJD30AMM7oYFA2m4brQKozQorylR86EzIiHegghejsTl28K9Aaa
	 94m1IGxzXRFRefqm3IncfyTL58IAqjW0nP0HsT76s7md+B9zx0U5Moxv0CujrmQSvD
	 +FFEI0PfgMfOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E774C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175488959357.2917.16378933425556992850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c521bfc60a84427156688e247559b0a547efa57e27e1e04ba911ebe51a352c84
Date: Mon, 11 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754889593
