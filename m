Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7146AA6
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B019CC433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671139287;
	bh=mAKPn9S55gpNOTc7QuX+D05DMwBMtDSbYzEfATqEJh4=;
	h=To:Subject:From:Date:From;
	b=E+bg97YwmQJVjgAGom7ckD+1F1wf/6NiPARV3cb5nb70K91OBjpGDXr+V+vYA/B9D
	 5S0RB0CSn5QIrmLB3wKadF7hHdqzDEWrGWxHwox/jrk1NOSsAzeO84YW8sCMBp3g0d
	 iGqVEtJUT3Fy3r3+kCDk8IWcV3yG54HGFJvJzuTIDS9ZBj2sTk+xG0/V7BD9HzY5fT
	 UiDSnd9n3ZCkYNtZopsuysIGcC196oV8yd9I9nXiVywbQjikpNv9sY12Dv7FlH1n6J
	 m37y0Vf0wdJqzbD0HtFa6QCyzv9tNkHGuOBCX0VAX/ZjYstxOmHF0or4M8+fjtx0Q0
	 nC+Xg+Fv0WVFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A585C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167113928742.5290.6437104391856650141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e66b819ba3668e8a3446a4669b89d71d884ae15dde6063f780cb08e0b05fb7ed
Date: Thu, 15 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671139287
