Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35D4BD00
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 897D9C433F0
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674177087;
	bh=4N7RR9ViU+N0rMPYaTH6HS4/uPdauxgUb55z2YlPOnQ=;
	h=To:Subject:From:Date:From;
	b=l5kzsxmxkoA6HNLCo6+yZI2/ab2i5OqKZB+SPjJqj6uYEEhr0E9n0XecWASRwy3ZY
	 FAuRWP/S+Ov56hsP89c3UmGTUV3PvCP9+AK5M+HloW5+lARq4RbMhtz0u1sJji1XzU
	 WIQIODn43ppC0liaD8sZuFeRpExZJnlLnsS1Goh0jCrLZpS/ATK3oSpOkTjgGvFuRz
	 WVbX6DHYtidmpstd4ZY76ery8HH4wJEo2CcS/k/huLwbjlbig0Fc2dd/Fq2TcEg+q8
	 e8VgdPqd2UhC9tf8Ileb6LMhKnK/Gcrr7wDPIWrDPr5LAHyyNRmR2Up+edt6HYynT4
	 7fEDJ+Hp97S0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C404C38142
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167417708743.27723.12553966876503149449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6bd2c099fa74b8e7ab9fc92399331d4d29ff4ca2957aedc64ace3cffac16f1
Date: Fri, 20 Jan 2023 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674177087
