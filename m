Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B9C7B
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6356C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673817087;
	bh=esY1JdWdgxqvkjLpGV+qJ9+cpx2tc6BPmIIShC9EgiY=;
	h=To:Subject:From:Date:From;
	b=BMPYVrALc6HZvxXavnaZHHspHOcplir2H8FQ+/W3XMT22zBzrsCvnEsswQEzT1i9u
	 D1u/ZljaQC6faIwbpo+S+5RLqS4yA1c1AkaDgbJJ8dYf8uAAehJAbAya+OEq0yUTZS
	 3aTbXfCXoEwEN5zpWEXpiHF9BwtW5ixjhNDxBbiquimQlIjmrdIZZut9MwFbfb594K
	 o0v3MOUqmP45tND3AXiC5EjiBo/FUO75kkXwhJU1ktUkrf4KkoKbsCK8Etm9XnQXCV
	 m51EKY6t5L+WibvdHVzjEP6k2XYgkEL+qUSRADd3ZmU5TzSnNlBoHvd+B2Q7i3JVLD
	 MMbp2H6k+DsTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 854CFC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167381708751.7666.6750027297534351826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d981b33e5803b5dc48084c04acd763a2bb6629f5be372c3d5050e19043cedc0
Date: Sun, 15 Jan 2023 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673817087
