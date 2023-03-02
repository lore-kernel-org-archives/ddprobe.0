Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E90FEA1
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 01:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1CB7C433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 01:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677719165;
	bh=3RpkVy+6whVdA8Fk2hRn/tDKNiMqEC/6OwkIx6TdOiU=;
	h=To:Subject:From:Date:From;
	b=XSt+bwbmdSw9Dac9cL9yAYskjE3NntceCLGprSzLlf5GW+3s3G+67PqSy0WsR0oWo
	 uulcFp4mNEYO0SlrdNQxAbA18FNZ9hxrNSiyZFLg8aR8qqRC+H20pmZYeZ5y8fTpwG
	 GL8FB6KdUDXAax5677IASJiB4oVvyuJZXWh8jhbXbZbfP4WFAMvGkpWej07hOxX/v2
	 yDv70MwMW7HLotckff8T1PqAG0UG+tvuT2ejcdLnXPIeT5KZJLpyBgfzPblsl/TQHU
	 HToFORCEsLqaeZK+A1LfHPpDsaALADBDWGv4HKoQJXchiKhAijIL5xHsrxJKYuf3I8
	 kEaCwjqHmfuSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF114C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 01:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167771916577.15437.6910190688658294634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede4b3da66b6caa71f27dc23b0c1f1ed95d85fad750d068101426b473c345091
Date: Thu, 02 Mar 2023 01:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677719165
