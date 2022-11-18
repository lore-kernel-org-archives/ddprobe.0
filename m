Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB329A492
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 789E7C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668808854;
	bh=g86cL3KgfI6v2VuSYGcG1DjlSXwbVMzz+DbPib+LIL4=;
	h=To:Subject:From:Date:From;
	b=nJ30b9ezPF+HMs/7wBy/TZVQF2lKKhf1WTgZfx6FoffKPBnahMWf/eEEGM8GfuwxK
	 /kaWp5nnUn1FOnwTxG+BOI6zTRA8yvUjlAw886/ndyvLymOYN5AwflEL6/ESk9LNdv
	 gH7+9bur9vnIEqOkpCbGVpGaLldEpRKhlDFSzxkMuyJEMysaCKNZuZKOgTwF4+aaqa
	 Eelklbf3IPYrpRhUXK/Fvvf+m7v22PnqVoM0v7me375f+WIcg8eJSuLf2SY6vIYT52
	 T8uFZJKQHPKCYAPuFOs6vtEM4DzlWflk3av+FdrGZGxOnVq4J/5vej6cwMV8cIjuT+
	 DZGGn2SGT3Bdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C913C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880885435.3470.12139514444844495491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad525dbf8dc0e3524770c5846142778d114e00ff91838eb5a8efa6afd3d36ccc
Date: Fri, 18 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668808854
