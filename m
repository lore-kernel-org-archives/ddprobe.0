Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D13C625
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783732714; cv=none; b=oayQEbwDGvDLiRjhKS8G4q6FZTfMhAmjVaFk3cKabCzB7KlkReHmM53Q7J79SDeI3AA/kTnhksK3zZLCX5mKIwFqIPCgH+Q+5eJznMGjggBR5Zdc4Y3HjhGrDsWElWJIyeVWWi0Xmmh2z8rxipqTlA3WhMkdBC2auf+CGUcAoEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783732714; c=relaxed/simple;
	bh=xGlC1YyK1Dh0rQtJgXwx+ZGj/fM8BeBB7kNT5Z0MdEI=;
	h=To:Subject:From:Message-Id:Date; b=nvEsc+4pQ0BAsl5Dofce52S8Q0O6LhyCa7JkOAftbvVgnj6akK/iNPdQ9nc+RJB6gicW/YoKPEDlvFnCTNUUdMfgHYYTUf5QuslaSlAJ7IZU5wYm1lEDlkHDJ8cmOjiZiCiGaqB1GPzAW0Fw+rslLh4ERWrBMRRWEQhfMzlzdLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9G8NMV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9G8NMV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B5EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783732713;
	bh=xGlC1YyK1Dh0rQtJgXwx+ZGj/fM8BeBB7kNT5Z0MdEI=;
	h=To:Subject:From:Date:From;
	b=h9G8NMV3fmF4VXvVC2U7K4C7LVc+3lNL2rfjcniLf7txGeenc0+qzLynArj1KAfxA
	 V7d+Eg9eRJj0rEB1q5+u0CJk/ZgVY16DTK5nhcFarH1sJQnaoOWwmJKzxYe3DwfZdi
	 bzJGXm9YkAEtm/wAucS/zWjXZEEp5xXb+Q+8L+WUM4KTQlXuCqIl65RsNaIodoMw01
	 gMukquRVlxQxNZlef96+yzSX1nvHq3ecj45dDnIQBomv8XTKeMJ0rLwV2LrkhrXnCu
	 kc9WRn6S1oZb+y8jUgB6ZhVFUAygNh04+FHJM2OvsqHLilVxn01FDx5ZOsmsv93jfV
	 oPCSWYAGbCAHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD70EC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373271368.11058.16302539291059925985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa99e1fa90184df0a7493437693462f76bc537f1277aa038bdd4829cdbcdd8be
Date: Sat, 11 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783732713
