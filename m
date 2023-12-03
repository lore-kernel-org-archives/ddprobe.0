Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCD3156DC
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNJgFMgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76C11C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701623896;
	bh=ww3+u/KqmznCTc9MNk4QXI/swdeS1gKwuV408Yvmdd0=;
	h=To:Subject:From:Date:From;
	b=dNJgFMgSv4dRVERVqzM8i/7UzSTA2G4/1Yj4AhyiVUA+dx+9lRpJL87f9+8PR/Skb
	 rsuMYRkhxomna7rzq+02C1QVxvazIiPm0i87rxjwIa3CB8UjXLJgUo/buWtX7zdNVV
	 X4UlhTGqgbaAlJW8Yvmz1XcsoLi4vb/qT8sFrXdtgCdvrB16vX0Jhx3vY9Z7E+AAP+
	 gOIUDWZGnrh1DGy9hdlYWENuHnpOyoqAdO6dU6JF0NqOZhIYQAv8NaT/aDiOX+Zm46
	 m6fAWRWhu4A8T69xFT6LIRC91x7F5mWKsBOqzQavuKynWCat9Clq8Ki4DRVbS6jE9d
	 C4Bc01Nj5z6Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD88C4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170162389636.17797.16524674139298510300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad524dfd659f3694d24563c6c1bef807148b0f900b44364d43a28717fe4ec3a8
Date: Sun, 03 Dec 2023 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701623896
