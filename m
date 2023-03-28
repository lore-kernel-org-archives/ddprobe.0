Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4D78BE0
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 15:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0943C433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 15:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680016985;
	bh=RZgaCbhAluU3MM6VOtYEJ8F4XYCR9ymSVNJB2NHpviU=;
	h=To:Subject:From:Date:From;
	b=Af6amI1VkFdZeKwbT2Gwuqtb7DcRIGLJNufepkkc9aJffBo4uIMCWwJXIH/rREaMa
	 3+2WWhPLJf2DaFND4zH+9xHDnT/VRh5OFh1paSA66ZIsOvAMtlTH1D3z/lXovuCEuY
	 vMElZXQs5NU1ctc25SbF1Xwjr4lv9Gy2z3afRR9GFjeEtmtnLvGc9/bwz3oez/fXSq
	 Ba3btapL7gHQuABYqEStc/yJXBLfDjuY5Vsk+Owpqn7Brfm1it6MK1wNKL6V4/slaM
	 3Km/jsToQ0xDDAnOnGRLTlfVdXIU513Ad/mNwAO2jDI/mgSgnNWtkTAtof+HTc/Kl5
	 2yc9tkkpHoC+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA3DC77B61
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 15:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168001698577.7577.4846625107443434668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae65dda663325d44c39612c1599d7818ad732632f66ea46c53939e95ec2a9d58
Date: Tue, 28 Mar 2023 15:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680016985
