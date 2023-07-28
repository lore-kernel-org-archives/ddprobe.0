Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B389134A2
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 13:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81B9C433C9
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 13:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690549328;
	bh=GDC2i2xATjLoCGb+w0RLdfwUj8toARi/WNmer4puIFE=;
	h=To:Subject:From:Date:From;
	b=qdM8v/SAfg3jre/DmLORkNDRk8xaF+OtUl7etkXWhgXlQk4otrnjlGnuv7zjMvAY4
	 Y5zIEAzhvGYuiuH1+XVCij2vruUD3ZGva/Ingmjc8MEYsf0XIJ6qQQcqEaIAAWx+ED
	 tubUUnM5NnDBegNbwKfRI284Vh6XK0FZACm5UfykpKVPPw2+tvx+k6YEWqoGwNDvLO
	 w8eB0KzLgb5fIrxsgrvHJjlrLViTSUb3TgUyveHNw5RWosLoILF9OJNEoLmTB0i936
	 BQbCjZKIllx+uzzlErOePAyob4E+3FXPUQJsrveeudXXa7zefFaMkfvEtl3kNo6CiU
	 Gsn+EX70bjtSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86A9C001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 13:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169054932867.22316.10673619625180152932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07d6c2ba666562b4b5f795b6f969a7fb70904bc3c60f5870a18a34ea3d09870
Date: Fri, 28 Jul 2023 13:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690549328
