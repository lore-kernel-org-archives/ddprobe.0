Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D7B10942
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 16:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAF7C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 16:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687795988;
	bh=UxgoYuLzq8sav5ItTrJj76cBlwPF+xNHD6o7b03A6TM=;
	h=To:Subject:From:Date:From;
	b=KiUsr4b4IRlco0eS1xfxTHOlIP+zDYcjSv5l6w3PDD3J/Kx3keEUiZqVFSIbATlzL
	 HXfrN7zWKX/Jo3aEZIchRLyjce18VnQ2JLDvNHwYg5E9s6fJzbgzRLNvfGHRQeqbK1
	 olmChUva/aMRJQcVdVRsic4qlQyY8wkBqklNYX2RbbR+LzL1QayiSsYOlV61d4uMjb
	 qHcmjHi5J9wuNi7GX9zUfmAGVcYD4Inj+njOQNrq1a40zFdjR8lOW5n0asHqFRA4Gc
	 +R8UFATc3j4E7Cc22j+uy+ih8aCL34vSVU8Fhp3uwQdFz9tr3z0pbZ9ZV3UBGWoqOT
	 DojOEdKalCjow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC538EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 16:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168779598869.20455.17707925036805751526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b2fe6e967d7b66928c70fa08928537ff5ee58961b4da963bf34a5232c47d712
Date: Mon, 26 Jun 2023 16:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687795988
