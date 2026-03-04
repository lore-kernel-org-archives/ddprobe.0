Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FE524397A
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772595294; cv=none; b=nKMK2z6/jkBwqefkkMlFAqUjOU+EWN9xtAn8NjmtA8yY5tWlnEH7Skd9B6LbzRD7YmHH9iEWFGyExHLuk1Y+kArGg6+KRu1wW31N15vIhXZibc3/SvlNAVYybroPE5xD8KfSa722Lm2dgFDHQO5BizCUej2l3q1mVrs660SMWgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772595294; c=relaxed/simple;
	bh=pWfXvhP+DSqyNVb6gU6mVY2Ec1BTdWwdsW7NBblX/E4=;
	h=To:Subject:From:Message-Id:Date; b=ZvhGhyvsUibjxU1zSNerqr/In6iSrSZnFPdoNwY2uqHKFhFyOuhIOcGf3RkAx5HgVlsxxwmqLEL+xuJV+D0ptr2O+jDUwjyzQPS+/qVTVvuJbNj8O8T/tnbd7t65J4oMu/GXIL+UsAMBPfEAQ/HO7V7uXSkH4FEBeoKzhbgICnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWx049R2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWx049R2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55B2C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772595293;
	bh=pWfXvhP+DSqyNVb6gU6mVY2Ec1BTdWwdsW7NBblX/E4=;
	h=To:Subject:From:Date:From;
	b=hWx049R2wXW5xWW11DJ5rmuSYFjmRKpW1T+ZiizYmeF3B3PjGQXo++cGGrPV8lTpj
	 o6wWWNuVmPdtvJ78DzmWA1p7W9AMKdGQmNio61e+ROq4dOOY2CZjtO55uDzhRW81nX
	 rEjtaI/cGY3gQ+6ZXcXhUiMZRFh8pqV8WRXSdBymQD8S4lDUJ7DbZijeEQoPEWJ/hw
	 8hR9yP0x4fsmZWzmSSe3FtuPAFvQOZSQJZ7fiCszW3fvK/CKEu/y7abseevE+bbcC2
	 McAqcPbECTjI3QN3ATfNy42+fqKcpy1bJjsOO1rbT42jtWt0mZbZfT66zJ0XDlwPgd
	 PWYKZT79dN+kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E2DEDEC01
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259529360.2305.14769997833328138203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de9258cc44aa2b0031df81d3911ebc0936ea833d891c5db6ea4281bb93ada36
Date: Wed, 04 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772595293
