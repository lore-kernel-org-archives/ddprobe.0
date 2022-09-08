Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C561B5CA6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A8FC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662663653;
	bh=nNWyjZclxg+1K+/oT7bUTuVuQmnaDO127kIp+krsjBI=;
	h=To:Subject:From:Date:From;
	b=Mi7PjsdXXwtWKPqUroId+qkB/U2+7gG3M1xlK0TzQDhKBIKJc+CZ6Bunb9dyo/7jy
	 Y+52EUYwJvWR19HTteIzSBiIb9FmhQs6OBKyYDKOxb+3ORGQavqA9tI18/MQGh+O63
	 WsDe5veihMpVLoY8zeFCuySLZJOApdbh94DaA+XrR+/rvBEIqarhXSJV6amDNgQSDo
	 EEjKsBuiofguewDl7pIeNJFFGUs0CAYxEbdin8rHpcE+B59sqvcDK1twaYQlNo+B2Y
	 s7HJcwyOKl6OiPsA8gTN0MZw7asLhQA9ICs2zuPj5BNbp4FjcNiFfcnjTzfx1/flCP
	 ASWY6e2TIk2Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5565BC54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166266365334.32426.13966537041319500031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c4449cd9abd6cabce98ca6d3e145606820246ebfca6788b1eb4a52d3538300b
Date: Thu, 08 Sep 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662663653
