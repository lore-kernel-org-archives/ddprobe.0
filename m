Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34FC28EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 821ADC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670925687;
	bh=mb+wjMtlxtoa9lOECykJ85lV8pJGHRI+bM2GeU+RoTU=;
	h=To:Subject:From:Date:From;
	b=pTfM8PUPyalg41h+TpR+u9kam9Zx/tUcIfeFjoeL/c0G6oZVSPRYNXnkyV5TFp8g6
	 c/UldoL7pq8RGutvNeJwymRjXU/rR5mcjOxBduAiCMbKmettBu0DDFR4ozGZ+x9IB5
	 1WYtN6KezaQ9euwNkcMEODFMlE/Sgv9dObqhThQN+ps34ULO0d9/oJ7+MapuN7vxtd
	 TLZS5dpiv+b6QFqjLgP3Q+WyVxi5kwr7/xNZhIYqLcOwT1wNRRJqPcLm0Wrxv4pc3o
	 GsNQN5qxlSRgPgxorFtLKIJ2TlDzpeg+vYA5W9lrGQp1IZslx0D3HL8r29x1LJfXbx
	 Vj26Dx6yhGNIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B8EC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167092568741.5387.13661608375289761153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23217201265d30dacf9922d6dbd3e76bdd0c41c68ad8c4166132307c2a9e48e9
Date: Tue, 13 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670925687
