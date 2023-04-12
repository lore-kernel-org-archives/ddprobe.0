Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCF739F
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 20:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF60BC433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 20:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681332305;
	bh=hcVx3RzH71rcmFThsF8Sga04I4xIMOEapY58uB5g/oA=;
	h=To:Subject:From:Date:From;
	b=mlFuZ5fn3VgAUK4vet0jXd3bI0uysD2SHWCa3xRSIb1bJg3wtuMwhCvpbV+g+osiX
	 03Pxj9x7h7sOtFNLYrAoPW6BofhQWgdchgm7kEkezl0IWwVWGxskIeSp3QgKdRAMzQ
	 er6l7bUWrB2rYVNg3OLC7kIHzZndhUEOZT9zeV9JhbUsyhCkz1iehpD9VQVpgBd5/m
	 TAVxlpJaolSLbkX4Q5ysDNnWytagvbtobEZUCCWrxZWUADAgpswLVBVBGCF/VgUsRU
	 fcV9inZi4ZJMx6e6SiCvRH8glekKheaT7GM0YmSsJlF27MzsMkvkGnlwnOMHliDFzw
	 obVEgRHusNHPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CEEC77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 20:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168133230578.6381.13369389759263453372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70db07d7c061f7e2b598bbe7d0a4c6415e0e12cd9791e761f4164641af1d20e2
Date: Wed, 12 Apr 2023 20:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681332305
