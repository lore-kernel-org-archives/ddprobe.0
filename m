Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3E2361
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 04:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31CBC433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 04:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686717428;
	bh=Arao/U9xRL0gunMMnly6glxmR7FB7lKW75Rh8rb6YwY=;
	h=To:Subject:From:Date:From;
	b=Gpe9BJiG0/D/GsmeAktmmePKprc2usCE0xroXl8j4I9J5gQzqwaUYkjv22Ptm0Uqi
	 ZivjjcdOiyqzyuNp9q2WpZhGrkbXXfsEsK52xfBYESig+kdF1hKnSDe9XbS+n+6i54
	 lluEFjY4+X8211wizcuDweVx3t7mS0Ca3UNIpPcXKZ2bjSlj5mhx8k7TkmWentiu0f
	 QXf9TfZmneLnyPaCMjQcv/httY6AhSDMZMOBPbCJfkU34PO2g1Dk0idBTIKbp8UrMI
	 T0/v6q4zgtcZMpMSsWWVS5Tz4VFgfeUyR/vVc2w+ATkkv06r1+kJb9U9/kZULsPVAe
	 FuU/2KwlliGQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA719EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 04:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168671742869.3015.2883340921972873403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85672f2e5cceb6acaa4270166106ff88721be37e29afa3951343958971f3a2f
Date: Wed, 14 Jun 2023 04:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686717428
