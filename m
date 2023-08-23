Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6830CA92F
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 10:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2937C433C7
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 10:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692785648;
	bh=mDY9R+rX/Ekax3eYRhXsHxPNmPCFC4v4pqvn2MTtmkY=;
	h=To:Subject:From:Date:From;
	b=oXz+duC58JT2HzsLEzNfAzacrnQjqcww2lrY9tCN5x5Ezxbl3xYI2PcYuY+SA/7Hr
	 1VYsPNi0mSltNW6fTvXaNdWSMMU/IxdqS1TzPuRVtFoBU6S/R5e0ZOEyKYyMaxozgM
	 ErbAOzItpudLJpaR1loIuOEmP/ULY+3jg1dHwod71XIWOz/SUp/oQWKwxgM3J6uY5J
	 4VoX9bO6BOLSH1KAFTLaKQVtI1mpGauEuM1/2h7DRjiCXb+8BgSG4USVgjs6hDG2UZ
	 kIvJuY7fNBAyyKTyOYxJaQjVVx79r/qx2T+prKIqRSMjW7ACBdS6d5sUxTaKjtaS1A
	 z38zig8q/3jfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EABEE49B0
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 10:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169278564868.27239.13016001996266325219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 032c37a37c633aaffd12d4d45a386b26e0c2d45ea3896426c7a2c7f7298bbb4a
Date: Wed, 23 Aug 2023 10:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692785648
