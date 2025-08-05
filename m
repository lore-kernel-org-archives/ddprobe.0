Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4D51B6D06
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754389795; cv=none; b=udMl6Ny/qnap1pBxr3L8QkxedyJnU+iMWhJorX2scrc+qiPPXJ/VA7MnhTkU99TAc7rLvWEfVhqQW4kwemMt8xh0wVSGf95rqUXOPVBsSWWWfQgwQnDYLxX/t/uTdAHgxHkHSUKfFqUWQ67JDkJtH+XnmU0uZhxX96Ec5nhzsOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754389795; c=relaxed/simple;
	bh=hVCjUH1rwKVzEGs3VImSrE7V1YgNxOGHIVcW+JjvZZY=;
	h=To:Subject:From:Message-Id:Date; b=IAEFPaaGyhJUPj3sZ8oMXdNFPC2W0cRpLinJaSUpWTK3ROqGFwOwm3yV2n8cGo/CbK4HsR4h/tfmBIYWUY051l0uMW2wvXQ/7nSHV/Vr8/2PgkOsvypd5wVK0rV54nEwUPHRsarphJfzkEDxm1re73x9ihIwkEacqSrXWwiOczk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUV6DCrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUV6DCrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED53C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754389793;
	bh=hVCjUH1rwKVzEGs3VImSrE7V1YgNxOGHIVcW+JjvZZY=;
	h=To:Subject:From:Date:From;
	b=CUV6DCrwmD5r6RB2bDez2o8vQ46LorRNRVVNMU/PvHZzmajbO55NBMppHKXxRTJe8
	 gfu5WH/++6uSleDLtw7NdPXx28RAtum8y+Y5DTdLW7rexeqK65rAmsQPNfCwzfAVPM
	 n9ThooS4iRpi/rAlPvaZya0FvYRQDn9CwPvXCz7M4hsg/Uaf/r9PXa8kl2GcWAy96A
	 2iCHbKgkcJ3xkE1e00rMaEO/dbQOT6hveOsD5WMso0nSlxm3yvS0ZKqIy/b6jAcOC6
	 ehMB+xvglN1G+e6BfMzUPljkrkUxwdZVhbWD54CQhaY3rg6I+rzokIgssnqSTxcH8a
	 CxjF9Fnk8rKEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6BFC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438979357.14486.1610841787319130983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17d07a232fe57ad6cc437277a5c941104e27395db4fd76ee16066b3e7cce823
Date: Tue, 05 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754389793
