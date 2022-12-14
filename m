Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B716121
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C97C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671015687;
	bh=pd4dKF/r9LF4/M1NC88/MwFKQGwdZvzvg3/amYqzLcY=;
	h=To:Subject:From:Date:From;
	b=BzEWeiTlcMeZiebeYvyLcgJqBZchOsmkjnSWLIWIUa8W7LLoEPJwQ7m050Xp1XChj
	 gzJXZy4TfFVJXETau/oY2sux+V5E6NopUjU+c0WFnx/oiAyDb80NKBdKWa4JfqUozB
	 VC3VJBSZr0moZ94emKGjWzOvIjbMwfnCfjh/2l57qQcJ5SGiJKeuk0804qAvqKauVL
	 92wuvh4akB9GOlFci6WDsrO6sYXw88aCvvAwLD+guJ4bzcsrgWgDZ0JPWq9VYYdPLP
	 i1P/3yXz2AgTQGNg0rPbBYo2Sq3ABzam2T+rYWUBMrvspwZpadc4Qsu8q3rUnNwFVF
	 zhVmEI35XvR5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A51C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167101568739.22658.5611096863496554486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f546726a7e64859b2fa5af1508a8eea8b252ec1de3d6e0c055dae6b93c564bc3
Date: Wed, 14 Dec 2022 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671015687
