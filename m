Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE88C7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68D16C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667533254;
	bh=jSiaVyIu/pV67e0PPsyUV1CUZ0ajOlR0CMH7fqHw3i0=;
	h=To:Subject:From:Date:From;
	b=YJa+jKh38ZX7vK3PTuE/tMyp7aeoRdxKj00mHZCPQWgBvMJS/EAB55RQpuZ86MJa9
	 lZuDNborovZ+xlD+3wnhNVdIcBCfM/uT9JlfyXM6hr2tw2BNB39B8qoRFsTmqkYQLL
	 7VeuETxeN7KDiswywMYbyoVwsMCVfbDVr23dLj9FiBU372wIwuVuHfMzBvHxyfB5/A
	 Bw6yGAZ4kGGpQSfcWNlkeCdNNPKoLgZJXD491C8S4Ud97kpnIRbiaV+3VCD+g9zwNj
	 ovtCNyNBH7we7IRyFLAbLQVeUA0TQSlTKYdye1sowhWVXLBKhrT1RARsRhMXGfIDjn
	 1VW4TunYjgV5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AE6C433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166753325432.7840.9061243810767690346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ddde203376898996f98e03d9cfa600f92948241a6d9ad9c041022dced061856
Date: Fri, 04 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667533254
