Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83A71F16B
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774670093; cv=none; b=rCPmGLaDt52cJQno8gaVHBzzPB5aI6H4S9V9/SJb1MjXFkLhzPesQWFaju1vDMAaf5cT9ZoQwOpyQwTdYtNVwrjVH+Izbfi+cSkSUPu+NO6jUg/nT6ISIQ5fsIQPQR06AlthcdpdmdF6yBny17VZ1W/nAz/abP29sQukG1YbbAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774670093; c=relaxed/simple;
	bh=JvG1HYp+908hMUAiC1VlFnuTHm1PphODwJWEiYdXMho=;
	h=To:Subject:From:Message-Id:Date; b=uK/FhAQJyA8o6y2IvV5WcLAsV+0j9Y04FqFgwKFxD5XzOAjgUuAsJUFx5GSTURkdwApx8ciFChYbXyp83oYouS7FfRsuc836gLDPEUEw4O2ACz7Ip2FCASb+b7Ihf9XGbGEyi2Ds/4LQI/opR3iYt/4Bt0pSXX3wDTf4c5093Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEdPvnc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEdPvnc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A6BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774670093;
	bh=JvG1HYp+908hMUAiC1VlFnuTHm1PphODwJWEiYdXMho=;
	h=To:Subject:From:Date:From;
	b=sEdPvnc3ttQNA3VRGe+MwfE3pTwFc6kraWxRXC7iIi5fhIuUXKqIfZ/0ye2Yb+j8q
	 U6odVM14PBmwG6Go5h8raXiiv8AsbkUdzKX4RiCkaoYXQSNF6OW1SQhh11YyjGC4eQ
	 1TkDUX7tMLaEHioR6b0qobj3yRn3qD714JVgjemj1KVm8cYVV+wnDkNrnPvIG2Nz03
	 nqF8kfIDPiI4vNwO4EnELPrgeyEjVJ80E/F5TtVAhRpsrilCTU6u3ndTdojmPj9oaF
	 CcyW5Fk4slrwXGxaMbm4FF+o/7613sRYNbPChT4BqBZxttB3ohVUKJ4LH0SJYCH7HQ
	 P1dgZyVj5/MKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971A810F3DCA
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467009358.21736.6641087474934683716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55aabf30c3a474e0f25d1e0478bd5fab7842006b20f5157ee3fbfbaedbdb3be7
Date: Sat, 28 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774670093
