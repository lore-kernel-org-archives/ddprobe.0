Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9D07F4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 06:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0385C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 06:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676009585;
	bh=tCRdRJLCKgbZrVaiH5J2yi6UqVz2ahzl6vciih2VlL4=;
	h=To:Subject:From:Date:From;
	b=Z+NZWEFJJDMdyAzewwhnQSw6wvpWMTvJhxXp29EUH/0G4G8b1Km/nuJbHBna/OYii
	 eZUa7nyN/ifDP0c2C2AU5ZA+qpnJNaPiP1TWmwBsTLBJxUP0+6DEDq+oyJnv8C2u8G
	 Nk6HMLXF6Ml1q/5IhjtV7A9VAHGc7fCS3/MHhVZSziVzOjhs67C3RsKS5HhSYTrV/D
	 2LBXaahq+w1UdBIkIsVa+Ym4dChlI3HXjyBGfvGeLwbFgQVm8IY94d8jlDZU9s6T7u
	 vrXAYZS1sByt401MHb8e1tOVYmPIHInrNlOmcK79BKezEx1e6bQylGAL7XqYjT+JSv
	 R5RF65+iMMxjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DA0C636CD
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 06:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167600958571.13661.17934155054488091147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47329c04d0721fb53386d6adb177d801e49666de466ae48f9def863d36860407
Date: Fri, 10 Feb 2023 06:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676009585
