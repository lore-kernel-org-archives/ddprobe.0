Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCEAA7C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D923C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661825452;
	bh=6sqQnQAJ++0Z3lZPMN6ioxxTZua7Qi4Y8B+iKOizgJI=;
	h=To:Subject:From:Date:From;
	b=nPTXLWXvYIaUUv3BQ88fohxh04wYRfUUWn7q/zLFnDViXSrOzDfrA8bdWzSmAFP91
	 EFa1hR/rPDLW7zxLfigo2FwLw5jqeKb+hg5PkXnN33yOP0mu7sljUzk7MGZFD8PWJB
	 9eNwQmseg2Eoi/+y2KxOlpOmF+8O8fMEbTm+U1OWdpBIrxRzo9o5poYbFxg1nOutZV
	 VhLd/wq2sCI5RPG7uZ8yUWJmdqY/KIAVTD/w4FcBVrHLIMrR2WOaMsuSTCajY7vmH3
	 pU1tMXOMRTvuX+vbeialc1BZxiqbqoC1EYwLthqHPJuZU6ZAh5GiWje3SXCGsO49Fc
	 fj7w0Ueif4j+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B72BECAAD3
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166182545236.28914.14351943604235802839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfdc3cda1e5004c98ec0b3ddcd5e9ed9fa7ec8be94dd3d5362be07da57716847
Date: Tue, 30 Aug 2022 02:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661825452
