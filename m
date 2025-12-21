Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8CA021FF48
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766354033; cv=none; b=bVKhdO7X4lntLMU6nAGu+e0MbdJW1AA2E0CT1RQ9sQKpPW3rVs5LOYworlki/sfClTFywQOZX3C8Ab07hAgKWtmZTCCUOEoGuOJTqQW9Ttoe92don245PV+Ek7KDPWxCOT1J9MQJ5yoNKhCgBugSoJOPJiUkZinEwX5VCweIsMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766354033; c=relaxed/simple;
	bh=fqIhfIp1oMeT7VLO0hpKcYtGRvPkgmWNaDHfdgqGnYA=;
	h=To:Subject:From:Message-Id:Date; b=ZepQJYf+U2YGf215ovPoPOiWbKskIN2Zg3voovoLOgdq+GChkDiRuHIFEcILHPrsfFWeytifW+dWJ7l0ljOs4nV0pvWCHm7X+vjbLBNyI0b0oXKI/LQjDCSRBiRGi2R+QIlTgEk1kUoVnDle7QuXC7aAvU6fso+lVqSG1vQhHAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSrLauT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSrLauT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A587FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766354033;
	bh=fqIhfIp1oMeT7VLO0hpKcYtGRvPkgmWNaDHfdgqGnYA=;
	h=To:Subject:From:Date:From;
	b=RSrLauT/JAX7YYqx1RsDTG1dq7idLj9XTXIj4f2QuzH8KzO1BIGzcsFADjNtKnyyA
	 jeRer0C/g7k7rRQZ5zfi0mjeYlWuF5mKxgqX3i1XzQ9+YWQDiRG+4pdxSe+Xv5ZwFJ
	 dqUqJFAme2PSPianLQkDcOtwsRSV+9qNyG9aGgyQP8di7M/eAYsSwBJsA4zZuDcnY+
	 5TkLe/GrnYnOLPzUd3HQbIgUMpmcWBdChdyR5MoG8DOJvH+699qcJL/+FmsDYh8SOM
	 F5LzJLwX2TIBRHLgthoRBP4tTfb+UreiiG02MzTClzjvVyAdEEnPqM5Wbt9Q1hB+0m
	 VEGoJ2dQ78jTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929E2E67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635403357.3408.4271722166909547923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c46199e7c8318691614d42b59ef8460150f196126c88c6317f670e75c31917
Date: Sun, 21 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766354033
