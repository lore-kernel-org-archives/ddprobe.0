Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AE63207
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 18:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D439BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 18:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674327125;
	bh=50+ShfWnc0w8vqGxz8vuTRZoy5bezqax7cGUC/HEFwM=;
	h=To:Subject:From:Date:From;
	b=q+P+K1ayRKnR8TLRiV4DmwdmGdU7D+7bBdP2t7tu2LtxQommFgpyG668ftUuPYmjr
	 g0a8SRaechPP/EHOfX8OCuf/iRFbdiRkodtUkPGXwtUAwkIK8sDPX4ZlEa0al9fuMl
	 d4bPLq9NBeXszMOzq+/l5EhbBj2llBlIdk3r/UI/wQukMfci5xyhS+ZTSLylrPbWVt
	 vLGkwhvroNzRdJHuiAQFisXvDDAhzMeh+lzhIBZJO6ksL0GE+qugcdvubdbQY11o+g
	 PrKbXejxefu6gdJxFH2INZNtepT/9WJeGBrEx92Q1qa59CjIRY3QTKMe8i77skA6b6
	 dOKSirVu1FZxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9F5C25B50
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 18:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167432712575.14950.702388844723637436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13dec8c722ce5d0b6ebf9f3c398b1fe01822a834560c3fd0a1e13ae1373f9c2e
Date: Sat, 21 Jan 2023 18:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674327125
