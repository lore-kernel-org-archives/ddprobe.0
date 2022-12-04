Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F0F15AC
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A08C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670164854;
	bh=gfDmocEccAk5vD0JxKTvnpUbUok0vWyTIRxK8AD6G5w=;
	h=To:Subject:From:Date:From;
	b=XrAmzjrfec1pGTb7LSbWKedHRmJ6+n5zN7plwQNY4dNcDu/3igrcK7PxtuKspKX7v
	 aHzbCh9uqm+1NG3n9XHf1ows/sEYokC3aABWx1O/aZJcx8XQ7JybozpPIRFAKljvhU
	 AnETNOkkW/Ud/M3sGVfZdCuFjCm105CYK4MEj7nB+OG1tJLTMJ/BKFk0GdqIidgS4P
	 jj/WFXFkjxZib1J04GRUEMCEFPobPzpL4z14mSQC938xiHanKbxFK+/mzw8pF9iCkH
	 Qif1PCR83HJyEs4B00PD0/3ac0FHwC2vJUutOnZQ2M3/De8aNcTl0xpbby6T9mjESC
	 9+TUDj5OGU86w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 571C1C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167016485435.15591.16901648423168792678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e61f3505afaecd43a0823ad0602815938412c7151cc19b782dc5aec07a070a0a
Date: Sun, 04 Dec 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670164854
