Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0E97B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69484C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669981854;
	bh=+jXODgXGVtMmuXQKKGuqRe9J/C9jxPvfjz3f1OD6xk0=;
	h=To:Subject:From:Date:From;
	b=gCiOt/WEkGJxvxvuiWynY65hJyFiCjlsfb1YnVZBrsa60z6kvhXBhg6UM7a49m8cy
	 iDt14hzWvZnxMNwUNIMXfsDBGTe4LmhZgqUMIIy2OmCzh4VItaxqppac+f4WvA398J
	 V2dOiL0TIzPJufVNuW/WIy0cvgZDmkEUnt7rTyN+uNIIbnmvEz+UJ6PVSuHwV5OzYK
	 xo54Fqn2ABiWodwisIcs/cgZL2KwJr3IcIPnWekYHNy+6q4aqh9vdrGFsDnF8/Rpoa
	 TTzehRgG1+5So/t/Z6JanbivYcILHsPj4d+sP+6UJ4gFOFJdL+TiIh3G5K9bx65gpq
	 4+qfcC+o3PJDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5004EC4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166998185432.11378.5354350464389117891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33cd94f06a6519c06cf5bd7dd8f65f1dba4bc22a410fa39323b82fdd23769658
Date: Fri, 02 Dec 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669981854
