Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7491FA9
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7309CC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669975254;
	bh=lY3HF5PguFdHClfBj8T+B/qqRY7/Sxmn7zU1rgGAjmY=;
	h=To:Subject:From:Date:From;
	b=pm3v3FvRgwAJnTxvOBM6ZyBnQHwjGOhYPmsaOfQ6M9TwL7kuox6xBn2LKFI9Xv8h6
	 HXabqfZYra4Y2HaFtMkhVwnGDnT/LnCeI4kfB0dLXLQyrtm3KVzGapYXOjWaHUWpmY
	 3bDDlIsojumUlLbnqlapAZA7OhoJnJsd+viR10lNHpk6piEyOYE2v5cMLvj9540eGn
	 GEu8Nwtle8hIEGTlpak/8KFvhFNBdQBiwDzYPS8J9kV1BMhT1wCyMhyoktXFxdVXoU
	 dJPE1ypUc5wgqA/U6RSvpqUup3QDxE5UeoEYxOHvvXOirL7dvNa7aFLY+2TgFJm4F9
	 r2kMNeNzcHHyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E67C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166997525433.30010.294604105613745806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3643a50aa5b35df9389ad48684a457c503f05989d67fcc07509c607a2197772f
Date: Fri, 02 Dec 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669975254
