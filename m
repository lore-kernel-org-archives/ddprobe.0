Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107EE22625
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711211897; cv=none; b=iqpwB+3Dp7u6RHf0PkaXOHRTD8h3/CXneD3jkgN2zysNfxNaFYz33JbllwoPnSDxbjcdp+57M2XN+06c+zxCI8OYvGBkCOrdx3Iwra7g1JCLOyVH0HHIeQSkCMRf8sjzvNFrJNh9ljteAEVLBQJywitWvWh/ESKZ+Eoc9sx2KZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711211897; c=relaxed/simple;
	bh=0fqdpmfZkTPzqSMc7NVFCflsn1Qk3HfSF2HeG44d9+w=;
	h=To:Subject:From:Message-Id:Date; b=Xcho0a2/2lPDIHP5Z/lwCDJJ9LKTkhCyLue8MKLGZQ1lvqY3yxep3y0QyrRBcFK2CXYN5F4yP+PvSn4n8BXHTg8BOSvEPD3V+hlqa05hsEKvTZnqYRUzfS2OQtvoLx37MSsNp9pclU2TIv1zMgTCV6RcAxUByB0t6dXnqikSNiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1DxQZJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1DxQZJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF6CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711211896;
	bh=0fqdpmfZkTPzqSMc7NVFCflsn1Qk3HfSF2HeG44d9+w=;
	h=To:Subject:From:Date:From;
	b=T1DxQZJ/jI60dVSQyRiJQ2Xu2vu+aLOrSxR6O8plFa11H6lCuaODzoT73HRga5vhj
	 CSaAJstK77Zl9//dgilm4cRX5ybq3YG7Wt4xqSUkH2VI5x1NTXl+q00fxTYgh/L2d8
	 z3grySFtVJhVUUtlI9x15TDP8vy5R1+oTVYKvo0ilafZrP99yNob6FtbDq6Wk8lYqD
	 MGagT204Ycz3RXGYUy8u6twXru6hrZ1ygKCoKPaMvLW5qegC1jIY08DmfUJ4aEF8PE
	 QMxfzzk64XBJGKmR4vZCz6QxBxVLJfaC5OLRurAUGmucZyVZOgRa0MZRzG+cn9Kprz
	 NCpgxec+a0GVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76FEBC54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171121189647.32607.15914250258539681858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 787ba2b7a151b2366dbdccf7143b790601a78fe3a766edefc6a33b0627c6667d
Date: Sat, 23 Mar 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711211896
