Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA047F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E726C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672707087;
	bh=Aad6/TqSjQKguAD8dic7jYbVT3Gx5txezVsFt3608wM=;
	h=To:Subject:From:Date:From;
	b=tNw4e8qFsSaaWD2eMApvYv2Ek+qQEIjI2umxAz5jiFrryRK90pZSCQ9bO8yBkL9v7
	 44FmiWk8svzO1u12zKcrswm7SSIq02Ln1zj6ciUQYyF0H8UxXiFlhTEktlrkacYN8L
	 sRzo0Qavm448RgUfydNP1ZncryO0gUCsSE9wzCnjAE+q9ES4W1s3SevHPbtWko3yLJ
	 AqAqrAL+zY30iCkZDW1hbTGfE4Zb3+aWo7OkShgEl/+DU/Yik1vpvsgEX7m5BSZD/O
	 Qc2OI8qKVE47wvPeJ/KkubCkLNIcyn67wW/CMVIywA9egDCcIBIZ2LIPnUbVISLWFf
	 IThtK8gaTG9GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609F7C3DA7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167270708738.16584.14123583809809944154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8990ebea0cf762213f54657d4e4f1187648f7da31d31bec3051c5e1a532711df
Date: Tue, 03 Jan 2023 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672707087
