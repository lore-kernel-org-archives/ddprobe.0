Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFF215D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68DEBC433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665499853;
	bh=m0sI4nL7A5+Ydgvxgs1TB7mpUnAhiWqgfFFZeB+BOXM=;
	h=To:Subject:From:Date:From;
	b=skS0o3tr+h84iV5rqhakPx22qLDVPF36XmR0JMyPnVlbXs/lu6AAg0UYqPiNBxGuS
	 5V1qPy4sFzXnnm8wtJy/NSoSYl3IifGcC45nMBpsfaElHfgx6jGbR6Aapf+ih4v5bH
	 6p9PQDPRSRddRFbn3+pyvs0I4IQYcIsMZcVMg8zTf/7YC3eH586ZLFLkp4G3X1RFvb
	 rbFzH/X0+p+GhIa15yI6wcexjS/vZ1r2tbFUPnnTYJ6zsdh+2qIaE46vkAKrba/2Ta
	 zKOUSlcQPEWiOeRMDFaeB4WpVmpqexc8u+ZF7m1kjelzHG+nIDYLQ2AYa9CS6fIi8T
	 fYZO7KneyfFnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC46C4321E
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166549985331.9718.4129910832230559293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b07d9648fff18ffb01b5456e020bccb651720b66802b002cd2d1bfd2820fb1
Date: Tue, 11 Oct 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665499853
