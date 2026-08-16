Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CEF613B58C
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786920034; cv=none; b=sYCyHvPnhlYnAKOY/t3osIkDCQLhLgOATXIf1jsVjArDyQO1dk0Cxbm3uqWiJz2yie4Ep40W1jtyiwZg/nTXQRsw12xOY11z+6X2QfTVTnr+H8bfrSpBOt7g4ZIsKs/t4GvAfZJ+/gwGVehbrrkPEmFZWcQ/CXK5FXQ/fWnKN5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786920034; c=relaxed/simple;
	bh=G2VjoDjVyVsqNHAoFkJwGPVvAODcG9dyjc1kiOM5FoI=;
	h=To:Subject:From:Message-Id:Date; b=FMXFDky2Z0Cl/GVtAXgBNsB/45wjmQITcabaCab3A1Z1l4/NoWEj0Tj8LU/EvT7gQ4siEyLKH0KaPdE6a2yXGpbQVDbfE+nSXnWeRePFJfUP3nfXwxdf7tR6dyevmfBPYhe+gYF8v9ck+N75VpACQ0G7cRaRUSTyqMtQJful4Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vG9YHtr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vG9YHtr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02B8DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786920034;
	bh=G2VjoDjVyVsqNHAoFkJwGPVvAODcG9dyjc1kiOM5FoI=;
	h=To:Subject:From:Date:From;
	b=vG9YHtr/JyWo1jI7axe+fnLUrwMMIj0WQJf6C/+7lYh8kaYvdQceh2LZNU8P9NPrg
	 PBBkHLcyoVSTtuLosPsU2IfyLA00rpRtXwTSbFAYd015yOBLgY9WxNSu4V6RtwbN6O
	 ERntKy5DsZ3ftgL0rL0AMlnO7rsr7OOiQzybj3xhhBNk21LbEG3E1vmOO4yf4B/YUU
	 Vgp78DzHsbCx1WWV2sbMACH8rr6Yr9f4s2H/1Fz0ZabWSyloVKstM++G+7n0WAUxwP
	 2HYxVgljgu/NFVeUK6l+cqTGXImZs7wRYrm0vyfxHqb4JhPnPAAJZ2WWjt6Oj0Je/t
	 7aP0hIKpYSmBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD73DC5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692003376.19535.14272233648187783506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf385c516c2463a18c6c84fc696b605935fa1888a686066f8e62f66addc29f6b
Date: Sun, 16 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786920033
