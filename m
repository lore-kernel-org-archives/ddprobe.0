Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5DD7210D
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89770C433F1
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671089487;
	bh=mvG1eFyXDyPWgxI3//R6eRRPIhA3mhX5St8lFx0G+aY=;
	h=To:Subject:From:Date:From;
	b=MhW4knrdc1+pxNv4UFEVk3Ass/7USDHKmCRE7p8TVa2m4gN2aG/l24zil0zMC2zqX
	 mnmVFBzLgRToBExaOufOYqXN2wmyK3Hy/fp8M0CAp1CiZkBYrwB0FnMjwXPp5ViXyv
	 vCR1BMZya8jlTF/iRGg6UAI2f9EJcRqB77ffKgTUDaIQInBTidmCWTAVD4AtG/g8sr
	 e7akH3W9Mg95nV5J5TeBL0cUundvsX+sRGamBXD0T5g9V0K8Z7nDkackB3EUM/57w3
	 7LMzaRnmqaSrLa9P/7kbKMjOzOPlu/VYGuyT0aw6zvdE8msUAxMW6Ri5PqiM25Vo7F
	 o8v+YEDOEZl9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE53C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167108948738.2854.8956233405554389620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2bf2d9d2419f54abc9c177b157bc887e9b272645b132bd05c56c13593bade51
Date: Thu, 15 Dec 2022 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671089487
