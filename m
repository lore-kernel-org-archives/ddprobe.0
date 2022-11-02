Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4F07ED
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84759C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667382654;
	bh=kKVvULA8L5jw3cGRnOsTWNXmdrbNmUKVcXXKuHKM+JU=;
	h=To:Subject:From:Date:From;
	b=QmGwbCyAFC2pn21MDjsFM6sFmVam3kN0Qy129ueZic2a+K33+QQTW9/yxUuS35Uvc
	 +MRM7FwKVhqyz/zFRD4+CjOW3fNdQEfH/K176NwFZfOaiPfUKVWEJnHNHxxW1Pt5W2
	 Z2Yaq15GjtPZ3hgyVmqllul4r45FHdsX/bAxYrUTMYfZ2SfIfPukP919AFOoGXTY32
	 dnpmuEfpBYzizCIG6D2HmgRz63AeuED+igUXXMUU40T7+Pd2UQSyywkgr0sEwH0Cao
	 o9xthwHa27T/wOdrRKBsqjH+mjp3xsm52XPMAZUOGgXc/Yzvnzi69FUNcITLA2T/w7
	 o4yxLrYoFJXQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62591C4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166738265434.14235.12760682562858356687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebdc38783f83da144845a3d7d54b14ee58490425e870a72416d416052fb70f7a
Date: Wed, 02 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667382654
