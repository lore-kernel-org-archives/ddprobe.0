Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6AE5C9B
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 17:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB52FC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 17:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688924228;
	bh=XfcY7m8FWXPJe3qPHurnoss5nXH/iI0mXtrD6WKZVsc=;
	h=To:Subject:From:Date:From;
	b=I1kqwXnkaycwVXhrLPDft5JC7aV04lGfebNWJ0jFgCo3WDyASgrfAW04NbR6FJY09
	 9LEnxm3+c3DpCjywUcXvzTNvkkZlOkPq9/IxiSDwvjLPA05GypVdpDIDwdq25T7MGG
	 Q5TbEc0YFKAbPqS/I66NqReeHsSdJG6ukTq6P1M7jJvDhovDNw5e5jvyokLdPIP/nO
	 /GaUuOfVIa0O9egR2vyIZ2mg0L6X3gye/il3VtQrlS0GrXFOKrOwV6/f9AqIewoZcG
	 QEQRQvyLbO5K3il/Na3Z1vIIi0Z+IuR1eILbn2e1fAkLMuNCJu6SIwRiBLVDVEq/3H
	 k41XSrpGuNAuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC7AEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 17:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168892422868.23184.403516482960473743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921ac3dadf954a18be40e383360e0df22ff32df1afc3b55b303b67d821d75657
Date: Sun, 09 Jul 2023 17:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688924228
