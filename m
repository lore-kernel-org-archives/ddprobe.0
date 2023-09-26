Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF6F6AA3
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 16:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF24C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 16:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695744308;
	bh=+t1Jqsls1b+ET7TOOKzF7DWh/Vdy/MYlCCP0peDyLXs=;
	h=To:Subject:From:Date:From;
	b=LCNJwFDcRLqYuoqMAmK81CViFlLPetBtxgcdcdtFD6ge3N2je65jcukw7hp1Rb+pD
	 vvUxWxm4AH400cpPZctln4DtOqUMtBYyV87vJfOFDvmoKGDZ4cPVt3gDwJYbo1QfeI
	 jDO68HmVQ7GfDZR4LK+iFxjSMQw9oDV58Lvu7R2x/vUyD+pfovyrTgmQJGQsSn7Cag
	 OlDvuXNRrYc1qflAJZDFhCyjf0qJllrslLrNe3N2SKEny9BhvfkGP0OQR2m6Yhln6g
	 +6hj3CJVvkXS7gClJyG6RjFWEMBjOlHPuCRnM2fxLVJyHMLe0Y8tjP4zVu73+Dp9le
	 AIujeZbRif2xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2689E7E644
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 16:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169574430870.22327.5984793719258521474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e351c84c80a9c9d9e78180e3b8f901a43c731510c83e4e494b253076c5edcf5a
Date: Tue, 26 Sep 2023 16:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695744308
