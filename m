Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89E117D1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A660C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662439853;
	bh=8Xfa+MSto1Vu8bk6WvsQ0JEuVFzxa9upZWQFxkzT/lQ=;
	h=To:Subject:From:Date:From;
	b=HPKttjKBpigt4f9ctZJB1M5wuaLBgZiyNxpZKZiMDXaJ2MofDhFnUDntDcz0uDM7b
	 vjcKwKwowOEkpFdbeR6aF/LpNGoNttnNWX52KWQl62xTmB0ZxjdsjLyV7iOhPhjjBL
	 aOPoFQvqKrfc7PzPOR7WR41oZmuXolC+ssjExMgAroD3uHE82lj+nKO93OMBl+FLCP
	 ZJXegGsO4xHNCtNr7znN49h7hF/nAH2hXoelZz/XpeK3Tq/O4qKClrxuPCVXy8nY/m
	 EFlBhcybkERnf32OBTD2roHRJadDEe2IPRK1uucfOxXhH/W43tK0avoXvOZTPU0CuV
	 wUECZS4maVMHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F819C38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166243985331.26469.12429435741796763512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f15fa12ea86eec7ea51a9c05a7cd4e87d42f9f6f8296b9da8dc4490bbdeb1d
Date: Tue, 06 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662439853
