Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469274C8C
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 05:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48D8C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 05:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689313868;
	bh=Xy4OFpWB+8uql+6JJu5lcAYTfkFcV2s6rTaoZ79nW9o=;
	h=To:Subject:From:Date:From;
	b=JPATqu4cdqB6YrRAm6fYjIVA8qyNZmYFpjqo9/fT6HSqJsCX+4aXIHg02ojhHYfoc
	 Wur+fXvVd+KiI6/xdwHTapfwHeMwwKHReoaRCv8vA8hzBepvDUm3RnAwTKtKzK7r9x
	 v2PCB7toAxPoE6ccW5QvjCA4l+u0+zn0fLpz/RvFno0Fxa1LJI44wH6g9NETaaEuPa
	 n0HeS4Skvp/GB6vjX1Cy3ZCqic/qsYUUfUHdIaHkGNoddRtxUdAuH87bD3XhwE6xaW
	 YdAm2SaYXOAIDggcEYxtbxyfnG8Q0ADpB05Nvg/DgcjGyL7XKXldXAOtaE4SccDNfx
	 ZwxgYEgnXogBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93A6EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 05:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168931386868.18954.2061974089654517643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bcb6de8f004ccfa10caea7eba3aa8d814ab689730e6d97d3fa4519de1707cbb
Date: Fri, 14 Jul 2023 05:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689313868
