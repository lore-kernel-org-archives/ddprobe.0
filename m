Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBDB224F0
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743952794; cv=none; b=pIY/ka9nelJ3dXWI3j8zR5GiZCVOIOHOXfJQk5EbonxZTPi5TDWeYm0zZIz5bZ6/MQwfpmePCJgn9auFTSZVcDQ3unPFl/hZqqpl3jwVrnMOtH8oN3JSI8K07SsWREgvfNvIZrEZmzUiuPw44XM5xpqfGz6PjiDY+8txvw6dV/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743952794; c=relaxed/simple;
	bh=QxbPMNDGqyaL1d0SfLSanr6mXl3lBP1GZ3I4oiK8TJs=;
	h=To:Subject:From:Message-Id:Date; b=Iwq9xbMfwdWPtCd3IZKfsVwROqw0MbPJ5c/VofTdcCgdUvueOjCWWR1YpBV0F4gcVtZ+iaomtaMBOzL8wG97oNDeuGL7uGrfNjOJuG1TgZ5hEMVf0DofzJO4o4lBkjfFiH/pEgIgNMOOf3cDjaQQ6q/r5Sgj5oNVIv1uRN/fQHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tF6lmUBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tF6lmUBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF909C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743952793;
	bh=QxbPMNDGqyaL1d0SfLSanr6mXl3lBP1GZ3I4oiK8TJs=;
	h=To:Subject:From:Date:From;
	b=tF6lmUBSjkBlrkQVw7AnMa2F7xh5bmeYXIfnhW8lIg0Fs0qPenMyONlnIInpquEux
	 hdyUlffaMrBCQwMSd7abRzNliAeX+h+ZgMIwAwd93bb3b/zNe290NZVq+ywkABp4FI
	 4iRMi7CGIyMJSf2BzzyrZv0QAEdFC8a61PxsRpg4QqYqkaEQ26724x3jb5lin7d54C
	 KHkH5vwH6p59//FplYM56MHGv2bnKf4MpE4LYrE0q/rNkzytADOqsIodZgRFIVBKuF
	 rJqWn+RmjEmOfiHsl6lxMFsa4nu0oWRr3ZCRmZdqAdc9FJC+PzfC8wnsO1c/1QK4ZS
	 jhrhRDf2DTqkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6AB9C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395279373.21915.16784315973772363568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0751094bd9d91b5558f589d89c9ca231b1437e3fd3aa64b2841b99703c01ffb
Date: Sun, 06 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743952793
