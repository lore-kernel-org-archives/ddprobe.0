Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488C8212D93
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736533554; cv=none; b=hdEN+3W3L1wvw8rDDZQzhIXzF5X7DiWd2C3y9TN9x60KR9FDwanaMSvWsQm0CuBDdVnIejXVIXlSJn5xOeqoGdwzsmkQIRymLMJLxCf03wW8mBr61M7S1+zJkcaTAMhVB12gUjcfBrDspkvOZGYcOwtEqmcUfmRVxRjr0cL5J8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736533554; c=relaxed/simple;
	bh=bUlDltV/KF5v3Y6UOfAzKBR8zYkCLnYIToWQtZgBx9s=;
	h=To:Subject:From:Message-Id:Date; b=gkdizNk8httyqDSF/YjjFjaauAR5QLi4gxSvNQvyhrp5n27JcK0St8RY/pxZ1h9WqX+63OJbX3edQN6xz7eBbb+fPMNjNLeco5VT3+RAvyObZnMd1Hr01MOzP0FyGvbJHE43wlJTCzSDK6X3kZKQ/FmGpjMkRT7Nn1ySbya1ad8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvSgaezM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvSgaezM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB7EC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736533553;
	bh=bUlDltV/KF5v3Y6UOfAzKBR8zYkCLnYIToWQtZgBx9s=;
	h=To:Subject:From:Date:From;
	b=MvSgaezMgFoLdAALKqA1Yqkb4ZhnlK9CK3o+vZ2BJTl3+SZZxb5GQNdqm0n7rb9/i
	 LgWBskQn31RfEQtu4sDWAV1Sf7snJh64TtJ7Qoc8m1vqekteWOEolXGXCz169u46/R
	 DdCsuitVFAgB+ss+K8bFygwoIpOcf6hmnUu9ZnKsVIBGxB02HbvUDiNfe6fzYaqC0h
	 bCyBuZQcJWKvWgkAe7HNACDgXEaT/Cxli2gwjJKP7RvXSX/PlKZmdDFm6qNVX8ehb0
	 TaNtVADIymEDcRZQ672v8fkRuB0hUoOwldxf0XA3/mUV9FbbHQO+8j2zRZ9Z1NbCyh
	 EhisOOyK9UMQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957B7E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173653355359.27370.2208274343268863859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266ffcc455d05a9e5802f5254f1dbc06cca90919498de457a130cb1765bd59c6
Date: Fri, 10 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736533553
