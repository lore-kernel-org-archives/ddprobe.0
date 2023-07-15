Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A3FA4C
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 06:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FA6C433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 06:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689403868;
	bh=gTjIuNQRPKYQ7/6MnqrwABHJgyfENMjDxZpl2ejcLKE=;
	h=To:Subject:From:Date:From;
	b=U64TbO34B9JOCdvpVmUQ1HZa1pS13Ew2qQrmogVSN/t3HrwONnUVcN3rU92A6YGrr
	 u2hpahp7arJwVLBaO/hfJEomEEuKEKuXd5gFfavXQdhRjt9LIEkZGEP248Po8/mkKO
	 pcDAD8PJLyr7X6Mj6jcxCxf6mEP0Atu1NEjNjIHU+3MxQn1C2i8pnusAMLD4dYrdMI
	 20Z2vVbBsP6qPd/VGZ0BLpWWyogx6gXPuyhVAb8cQSybGfln0N2lIBdHAl6YMuI4UK
	 Ch9uHmnbm1FqDOBqjVpWa2r7hb/UodWFjnrRDpkRHWbh3eycBBS1r1uHDQfOvoCGFY
	 it1dyV05tPBCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D2DEB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 06:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168940386866.29077.17090860560029102137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d1adb2882ff02b91b104eaf15b5290ce76c004d49d82751dea3186dad738ff
Date: Sat, 15 Jul 2023 06:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689403868
