Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3F113AF9
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 13:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45D6C433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 13:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696426568;
	bh=csbJ3M7C1VlmZnYeokOO4R5CikLeNotUH5dAaTjfmsE=;
	h=To:Subject:From:Date:From;
	b=hmSe23+jorJegUhUvQCGP3Cnc6uIS8gfmq0Dp9siBxNXkTKfO2ss7IHZTKpojVWzY
	 a6RzfyGnTgDUeviweGp6YA5rtyywkJVU1FCtX0r3JIbFVx5hQqV+DZXxjarSP1UNTu
	 I5ed2naDKcFc7998lOeSLZ6Bmk9D9z+NBzPMpui0fFBeY7E5V/a7Ck0sQ5JNYcW6v4
	 8q/uxMBDa2q8DLFvnOK5EQ3Ianmi1yX0EZlmc5J8nu0cj4LNsCTaIbLaaFdMsA0LBi
	 sQTibk9d7Bg9/mDlzee1+MsEn2Hg9kF6WVXw4YWNzAsICWX1yQ8n6xovv17IK9vPby
	 WEyaTyTPr8S/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB86CE7B611
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 13:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169642656869.20724.14324789490928105272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b258ed35edabb7acbbe66ab854e5cd9bd69bcc43a7ded6042e022f782e8143
Date: Wed, 04 Oct 2023 13:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696426568
