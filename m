Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9F1277017
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764888774; cv=none; b=stb7myapyrTk36hSUYAYX5p7jerRQBGUHupjeuELYJQ93hnXpDMxoNniixRdKUJErRi6IvEdjMB+mM8i/XjbvoqMbKse5A5rgFveJng5m4zWfc2KbCVomxuKdh7wO9znr1jeBF5QBK9RL7qj9FQzvIzcHdv+ZCsxPYJfI5/fHvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764888774; c=relaxed/simple;
	bh=kUQGwbB8sC0QRuqgrQXd4Ohqat1nuMnw1R6PEfKMBz4=;
	h=To:Subject:From:Message-Id:Date; b=WAEGKyvOHotTQtvhsIlnh6D2XykUsAy3unx4xw6zXbQBJj04fFZYNv7OtZcgMbX0ZQemmXU6YKC6hyHoEaUN06QC/imQYjrbn+8xXmDpKiJS/j76B2Bv6iDocY82jieuYlpO8oLC4EHz+LIUNUaC1ygQbqIYR8XaaV3X+Y0V56s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ht4jHxRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ht4jHxRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AF4C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764888773;
	bh=kUQGwbB8sC0QRuqgrQXd4Ohqat1nuMnw1R6PEfKMBz4=;
	h=To:Subject:From:Date:From;
	b=Ht4jHxRv13Zc4bVG8Q+zMf3q7nAaYYz62ohzj1YnmguMQAwN/nHufwDznLhC499rU
	 qxjR34w/gcXWL4rTX+3CLGiiBXqzk+9c7irYjbq/2AX0nFR8ojZCXJtcsDVlTQUkAM
	 0nXOg4V2qXIH57pwFo56R2rdc+61AeZxYo2JHwEoDkG2veVXPXfp1H0xbDaTDnDn+B
	 xiqxW/9Rfs2AIA4eNJPM7InSE63L9AP4W2Ss1IupUxaghprPR4GNVoqZsy0QxOqgA0
	 SFaUCd/x4CcInCwXO2Ur3Rj8gh/dBYY1O8N9Pz8R4lJn+TV3hAVJ4OQYSj9MBmAQzt
	 OqGI8wvmwGcAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901CBD216A8
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488877358.24936.4160061320157398356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17796ed40877494caec5f71e5f24ff7ce81fa4860ede7347832d4ee385ab510f
Date: Thu, 04 Dec 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764888773
