Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A33290D
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76857C433D7
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668591654;
	bh=Rqqfa5OLzHKKxauHr386Uv7cwspAeS6bn83Gtfc6OrQ=;
	h=To:Subject:From:Date:From;
	b=OcKHnsS1HeUsr+83kHPQm7SZcq5UvPqXMWrimHwYdwdUivlg0b2x+7eFEGrSl/zxi
	 fqoERhZuwiqDCekypdRtu4ZgIH4qGLC19FYUypRJVP8BXdfhmnySPGSTrwWbTcHcQL
	 o1XK8LJN9VGtdMuXiUcsiy5VH8qb7NTcdUB8Hkomgn8dpusyJXtrSGGGG/5rqpesBl
	 ZJ0Igh/61Q7Yo1Jwrt9RhGGzNc7V8J2w5d9+206z5+pN4tzGT/4v9AB70vvcaeC1pb
	 4+wVJAy4GEl/8xNdsAVnNshHaLcxsEi6UlDCMkB/6E+lwnb5S+aF/5AtdydLKlfdxr
	 usnz0qgfky86g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF2BC4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166859165436.12026.10899883010305483734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dab092ac0ad6e470d654f4fe93b80e0d8504aa4769c62ea2f32fb6bc8b9680f
Date: Wed, 16 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668591654
