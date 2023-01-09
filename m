Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6AD28E8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91B4FC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673260887;
	bh=EbG0RxZxqWVB7In6IY7kJsyQ6H94XU11U3O6ceLoxz4=;
	h=To:Subject:From:Date:From;
	b=dOSGIdojYY3VczskP7FnjKlgm25i9e5ePAPpYk0UrrHTpJV4ygEzl7a72Qz8K33dT
	 Lx41jWuBX6+Q6gqBpi2EeN2bfIoisGz0/4RMYLcnmw40wSiRbc01jnaSULsDSnhQGh
	 t2t+89TsUc+FfW88BSHnJwZjkHJmprJwDL+VPLsjAd9J5zBNfgR5Vyy97Ny7TM7Hox
	 kMjgOjnsB6H00PMyo983AxsiECVp8feAGF7hAfe72ZHi76FFHGc71fXU37jFA5BVII
	 3cF3zNjAR2leYYaON+LF4kTOfqUSL7hUGFF/wc8gd7usooZkXpUPEpYa/w555tnMG1
	 9UwvQZ8Or1qog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 726B1C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167326088745.23871.7463567500923258580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd49c36945ec2db80118af78ff4e65cbeabeabc9294e08a7ea3e96ffa760c69
Date: Mon, 09 Jan 2023 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673260887
