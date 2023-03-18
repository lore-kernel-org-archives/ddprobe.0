Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4A233FF
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 23:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE66C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 23:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679180585;
	bh=CKyeav8EVu/yftwd4sGPxIUTiTh/kuPWsKU+O5KHW9o=;
	h=To:Subject:From:Date:From;
	b=stEVSHNX3p3lud4+xV7VzXILLyZZ0wHQC7gRgY2rMaVcOWeXyY/TqvYuRQhULLk21
	 233vML7szpaKffF3knJYcS/TFSIqxpce5S7c2bmyH7MQnUYG/Z9ksO5iRjyPJ0SYkQ
	 aGVlHmhHtRjWSgkdKYKX9CzgyGe9PNo8FzMtSPxBrS2AhLrkeSgKZM+Orfoypahbpd
	 EK2rjr2vSfnYtYwJHW29lZPL6vs4ViSYaKFIcqIbrv1E0O/HxuCdlZzjT1H2HTNBNO
	 3w8+qA5wEha5zs1iPRY7DnaAbv3g2VlC91f76UhCOeGeUcdde3lxXTmgZLj5SIqsH8
	 3Z3mttURMs9hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C01C4C74A5B
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 23:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167918058575.16416.12709975492668605877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e03c7e98c413c69e2cf48b82bd8f7fcbeda8ad9ce4b471c426b2937cde8886b4
Date: Sat, 18 Mar 2023 23:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679180585
