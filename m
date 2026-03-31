Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5133E95B5
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774979694; cv=none; b=A3c6CIkNMNnqVnAiHY0lXPzo5HLWkooFXRLliZuJn+Vsd1YARzaaJcWbL8n9i8PJnA3WaCnmVPzj7B47PrDpBIIp+vjHMZNyks2qsnXIGJYBwVzziJ4HEF3CZ8p27wejTJdOckQg0UwOddhO4mlpxc317pj4qbIHxT3mhlTjYJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774979694; c=relaxed/simple;
	bh=Lory1WfqwjcaniL94KwwLGpYJ+Cv6EJsz4OBIwbIurY=;
	h=To:Subject:From:Message-Id:Date; b=XCmuTF1OCIBSkA+5bnnUqDOwUdMkGxY3U5uxq3t+dv56dgjQLXhEPy9ofFNnfJ/4zat/OVcRtvWu4ztrCrlulAGsxLe2lR+FP5nrLaY8e1JOXR/43+S9OAlnzZHWysm7VhEORhM+NFM/rZNx+fU3euUZwbuVeDHdJVR18ZWRkmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/ShGdag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/ShGdag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE690C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774979693;
	bh=Lory1WfqwjcaniL94KwwLGpYJ+Cv6EJsz4OBIwbIurY=;
	h=To:Subject:From:Date:From;
	b=t/ShGdagebF393IgR/e60PU3FEWYpdcK2SqjVMI64poON3Xo1ZxXWqLKvGcvqItvk
	 MCzcsiEvqxLkcid9AvvOzZzgq5o+c2LRCiE09W0YOi1E3QKXnjZeNWmvlPIP0/FHra
	 fMI+LC6gD8zxOtX2alq/8Fv+sEAFLYIUdTJCy/847/9jQKtRFLvB5HpEIl1HsTncaM
	 hLX6rm83RoxGE2FEwFnexuh+1e5XpOcjO/SUiAPjsbUFADU5Vn1w6I/UhhtcEs+/LE
	 W+3Yc6w5ZeszLwiTku+1D6dEqnzwB4YhxCaQdmhSxCiGxvuZ2cCG28D07zPC3xF7rw
	 NLep6RdWPT/9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983C5FF60F4
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497969360.4302.4825293608246806583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ae23179f45096b07927cca3d0aefe8d6ab2914f575d1066227f9d9db9d09f0
Date: Tue, 31 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774979693
