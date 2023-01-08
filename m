Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45153C2D
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75903C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673216487;
	bh=58MDKwjhEkI3w3cLmbYKfnjtPdhQMJBldTRbTRjEMKk=;
	h=To:Subject:From:Date:From;
	b=Xsvq5GiOrP2Vjfszd6QO1v91lj6S2JUs8nMmlrvGYT8CnvxEsrtTp2hF1CRg9BDTs
	 bANTkWdKyXDcmBfZ3m91w0uSlSfS/NAxzKDxAeGZaHzpouOESo/jMgFTV71SSEjNcY
	 h/j/s39ZhJhECXAxz1EJpU/66atuZhTU7oGLr9nJmQZKNg7v6HupHRN6SKs8OAQ1O/
	 ScpjGctHSePEzWR2vPQC35Ufjh22TI7et2kBmYXnQzpELSgTpHxrDUG11n3y+dkjCZ
	 4kG7Q86HwNeThG8nCTai7N03wikzRtm6+/SXvkp2TIsW4ipXqZimHF2hbY5nCDfRlN
	 fzMTMXwaMA1Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D7F1C54EBC
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167321648737.16946.16940934107210774174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387b1379cddbb288f2fc7e56d0899dcb1b96ab9d1eb3f1dd61acc8d2d436a9e8
Date: Sun, 08 Jan 2023 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673216487
