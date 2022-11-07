Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C063815AD
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 715C8C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667857254;
	bh=U4ULfyzy5e4QEQ304+3bda0KOGQ2H/V/yvzjKXmAEuU=;
	h=To:Subject:From:Date:From;
	b=deGleunAfe6vpjaAWa3cTjGbKkAhPVQ7bsfH/U48aUC9sBV67rr/zzB+0G+eLCa/v
	 CN2YP0c0B9nM34S/lCXgWIJ4WWxbbGm4zhXeZv3nQf/ZAfPcn+fduqNOYOR+sZg1EL
	 wroXIa7mdR0+FB2FgJWIBL4OwswpfVoT29MXaok9f4PpouQAGCQo2EAyKOhx77einu
	 +qMRbZbp7Mz/ExYcITCBRdy8Z0ePBuz1LXtoygGcgJqovQQo6tkw4xiwhOx13a0uF7
	 sW4WjCDQpMFxP5LWdqRnwWAF9z8gtMRE/RLyJfbXUO2YqT7UlRD0mLpjhNA0N+M06K
	 tbD8t9sGQ39hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509C1C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166785725432.20068.12925950586115760572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ccc18091000ea70c0ecf08a0d3c9f7bb8d99065062be9212b24a86fdeaccfd
Date: Mon, 07 Nov 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667857254
