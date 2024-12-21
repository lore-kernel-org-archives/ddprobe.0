Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A41A15B554
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734810954; cv=none; b=QWBvl6h9Q8odGH6K14hh6ueTmCk8GmZFzZGhQxptnVy1CR43QHxBtNBYGyHm4vFeLI78PwczpWL4Y84YS8snvbhvp51vMFxiqgQ+lufgVJetJWg0txpedY4jnv95pRafq80YbQLirLWtm5KA9bXDBj9d4XG2XwaVxsjfSj7xf7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734810954; c=relaxed/simple;
	bh=735AFL8ny6rSC1Hs2Os8gyeQMdrueFrPIXPQc3tvLvs=;
	h=To:Subject:From:Message-Id:Date; b=rElFOnM4NDJxkVtZcXnvtbUuM4u0KlXxIIhTEbP/Ubge8mSEb0eNxn/2TNFBr9Iz9yyHcvkVaRht0tEwIv/OjqTQMCbGJrahI4xjbkYSks21GjWWy7Qq1M6Ww4Rmw4JTvcG5riX45G++dkvVjeTjvWI4+HNy8uIabYTpnR4zB+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKMOIi6r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKMOIi6r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91E0C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734810953;
	bh=735AFL8ny6rSC1Hs2Os8gyeQMdrueFrPIXPQc3tvLvs=;
	h=To:Subject:From:Date:From;
	b=NKMOIi6rf3kkeSU+N8nQyz55E8zQ0giTx+cHLCgdxZ2xd3sUyqar0229Z1UlYeYg2
	 DxHYVcB+2NIvk6Ki4dBr+LSkf9mbvZUcYaf5aSgVDEVQP9sU1sxxb8I4Y+yYy/6dQi
	 6g791fyZlIw2MiKaAPeW91+TExknK998gCgQnPjf+OIwD3Dcw9gpbQEtrT4lmoVdcL
	 EfIBn3BQn5gKtkuGgQfDvqyfMueJT2vH4R8mbhNdl9bva4FKUYiRgp4nBgfI9cz5BN
	 F95/u8tdk+FwP3T8zErYqgb5xT4RkxLYH4Ucp0cRxEunv/tfRdAocjKgFtstaBHAc8
	 smntZT6lL3kTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE39E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173481095362.15937.2162785698326701650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e83b54eebb50d28191619b263a610f5542d9a5391f39b6b59ed106193a258b15
Date: Sat, 21 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734810953
