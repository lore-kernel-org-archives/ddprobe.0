Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145011534EC
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771744494; cv=none; b=mN2oBCKVoXEoleywg1u9J8EhwNCMk5WFcgeM0i+wjZ2XYYWcrhIN6KCZZWT3KFgFrWbgW1iVIW7vUkPMm621hn5k3WBnsqdMgOiPdOL40Y3LgyAUVfrJQO7oSZJU1519vcV50EWyxhWW/MR+6Q05Nk1rF1IadF3dGyB9IccxjSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771744494; c=relaxed/simple;
	bh=AhDLhdB/ektsYtPO5XVC46E/UG/KDAgTwW4NwkcQuZw=;
	h=To:Subject:From:Message-Id:Date; b=duZWGjWC+Gn2dj0klEdNTmdT2TVG5bP2iVbQXtox5hs6jyE1jOwwN4/kgPUmWxqHLp+gmy47OvtRqhYWCt0w0x1NL7sFAYXWO4OB4lW9yt6frK79OHlkC2KEDTqZhTudndy0YLSDLni8oEyN2fLa21Mny/hK7g+JzLjdq/YtZ+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqLeeT8F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqLeeT8F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4254C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771744493;
	bh=AhDLhdB/ektsYtPO5XVC46E/UG/KDAgTwW4NwkcQuZw=;
	h=To:Subject:From:Date:From;
	b=WqLeeT8FgylMeYLdccXbpUW4ERvZ1vN/EtpYO9ETgSjYhNKJ4TPXfFu8S0fAgE7PP
	 xiSfkZG/hktAZvpuPJqPYdX5FWQbeybNsToX2DDn9VgPXqT5/DLN+TEbDKWiRx7l6a
	 SYlCMKZL7YzNWVcgl/qx3bTz2uu2wTGio9iHHSgHgpS30R2rp8Up2j1V9OMKz+FfjO
	 qWa1VF1GOoj5V9DpqgBnzbgVS6c/SB5VVSAEQB/ZI5xkFaA+sfvZ28mXpKVVAkU5xI
	 dB9SAXWZszLBvNOgmXVNMF7oLWQQgwP+G4HSOlraWZEGptMCKAhJWS5ve9ojc2Wz9K
	 4EzlaujppNK4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F79C624D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174449358.29642.9571440759329138434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8efa6eb5d140e8dcb7570d98b50e1432f9efd037aa0ee57c788bf1e67f2768e3
Date: Sun, 22 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771744493
