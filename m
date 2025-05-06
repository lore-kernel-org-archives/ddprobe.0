Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BA123F40C
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746503994; cv=none; b=LuiruL/xqUYBkSg/6/uHkQbTWoRblBd+xDuVArDF/f53FEm6VJhbkNtPGf8WGGXm9T6pF8GYBT/LbG65JCDbbe8NP8Unq7fByX6H5yjMpDguYerpNEoHRXrpTlk6I4rWtXZ8X5bOWxQqQebFIzYxB/z9EWY9GGyOkuYuJDGGTdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746503994; c=relaxed/simple;
	bh=/j1446Z+J8QZJZb4XbfcRRg8IKZIK8yCErOqi82YCtw=;
	h=To:Subject:From:Message-Id:Date; b=hfByWioGM9bj7d3kxZ0PwCd2hpSqU33V6bstR09IQXiou3/dNidR7jrmrOgjj3xUVedVm3hl8NMWS4jFJ75uvcyJ/jBA+Cd4akDxtWZVSxMgPNhyf0DU01YFiU4lAy1rvFuQpk5sfBY4CsZkXJ0U8NVjhpsJhXHwIlk+waAxhIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TavDiTZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TavDiTZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1073C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746503993;
	bh=/j1446Z+J8QZJZb4XbfcRRg8IKZIK8yCErOqi82YCtw=;
	h=To:Subject:From:Date:From;
	b=TavDiTZcHwBi3cRmgGi+6HGI6JyvYzgGRbTUMcYYTsBaJ0PounzvtKKfNtbaVBFBD
	 O5tkuKO2Wx2kvTFIknsc8GA9apsaP+MPuUlT/6/HVlxyGG0sy5XaChW1NL/HCBA11W
	 4czKthh3eIgJohXb6WRvulI6pCJKSF6H1a1Oj6eP5+3p28WF9cz9nOQM2HMHwogh9e
	 GMtzutcaLYbRmwc2/UP7NkfCmNK945b68EkUsjsUt0i2ql/yu5vEcBNkGr3SSKwq/k
	 s+GF3/zTkjhKSWdKmg/4Ftp64oamg98TaJ2AG3Xm1epc0bayAqUavPjB/FLH2oAu2s
	 Is2gefEMlFlNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA40C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650399357.15009.16069283512693409398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dad52e6afd7a65ae118de2a396270909076c9466db746ca7bffa9ca470ee912
Date: Tue, 06 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746503993
