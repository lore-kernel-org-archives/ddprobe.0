Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C862B323C
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F070C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667891454;
	bh=ggJP+7wZlXDbt1Xa85d79pfaUfdr+NcmCDwsxWuvn+k=;
	h=To:Subject:From:Date:From;
	b=k6Psc1ZTvHRQ74Qq918W3g/swal05p0oPMiJQQIZd4CeMxaMKX3tyJzdjtHFJvGng
	 ZPed0uY1A3ElzzYNKVJnpZimYZe4Vg2btf9k0giyRHzbN8Y1vND7dJRrLlFwr0ekv1
	 ym+CsFpi++o4xHW9evjkfQT8FST9eJ/Zp+9au09I5Fw+GfGstk3PY6c1sZDT2479JA
	 p425jUaW9pHq3Q+zcrF7uYYGwDXPlLRQKAmrzHJbkrXmqHko2EKqj7zAjQiUsrfROi
	 +KhaDB0YA4KYFSu4nWd3ukkoqAmHZzJjpOLA3ggW7feMh9Wx7KaTHV5lwR8J6EbfPO
	 e6ddxRk0urECQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A79C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166789145432.24467.6820588589409940724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a38c33a9016b1fec8d1e82a1e6eff49663ba5df0172539b9db5c9065357d65a
Date: Tue, 08 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667891454
