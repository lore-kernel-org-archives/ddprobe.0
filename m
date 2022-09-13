Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B943C37
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76597C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663110053;
	bh=+v71/YV0XJBhHp/nVgCx2mLKvkqM6TDSY9l+5vZG4AM=;
	h=To:Subject:From:Date:From;
	b=DOt5JJghraKCRjL5gvroYfWF6iD90xol8yxpQAUcOr9T13l4rPz3BO+YfN3Ah2Haj
	 lpLjXpMyXL8L9vKg0ggOMN43i5xlELEyeGy8BgAJVGdgu/FC4hFtfQEQHJM8EA5yii
	 Nuck9IXTTX6EPQCSRHTxD7OukyQzXdoGmILTOkVv7N4Eu/K1Z4ZsqXnRYuSCCXsF9+
	 /C5RAeDclg70Jnpox/on+s3REE955MLenDwhBD4yVnH/47HTH0g47fmRBdzgJ85IIk
	 AdjYV/+R6riRBXOdQggzMW0MVKdSfK0IKRIZsaIWGblTCNC54PyFJDFfkVc8xgNvQD
	 a+oVgdFctEtxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AAC3ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166311005334.30244.8157701352280965820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06171f5d4abaaa95780b0c96ed0e3d05ffdfd3ec34ace6d004bd8a9deac61af3
Date: Tue, 13 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663110053
