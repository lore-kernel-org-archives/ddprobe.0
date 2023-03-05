Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362F53D60
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 23:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53FFC433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 23:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678060025;
	bh=SySq04Q3GcOcxTgE9/6GLkPPZBx8xmGg7AfV/IpVdyI=;
	h=To:Subject:From:Date:From;
	b=X0oHRdxF2H7sfbt+WqZSY8zFOD5R/wAC9uCHisJMuGW+JadYJxEUM/TwRjQOjyRt7
	 yonM7vAopOFhhjW0+LNiMzeupDdlI7vY/ARM3MXB0nxLkb5eXcULkjYL+MHugobLgt
	 spE5NlabwJNFslvx7q+vHw5TKUySUuEhPbLMGADbK0dljKpW096GBjpWLGZefXhF9a
	 4FBX28JMZdFiCVtDirtwwYPhvZLZpdQxP8LtTW8xc27siDHcvb6vRk6nOYZq/hl8yl
	 soUmt1VyT5LtLDG7rqsmoF5v/1XhJYpWb9B618y/Pn4S3aKjyH1gEqfSoFDRmOtzDJ
	 w+8AndF8oczYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43B6C678DB
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 23:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167806002573.31008.17302049022107788229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c5d75caa5cb7198f67e69f6e809935146b550678c99e986a5eed1c831edbdf
Date: Sun, 05 Mar 2023 23:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678060025
