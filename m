Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E57C2E0B5C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776675454; cv=none; b=OElvytMnjtKCDPk1cQTgLpJIb764Ox/EDFMX04nZv1AQ8MPtoiRs2t3nnnKl3lBsepri4wcg/qd6nZn7kOSim2+ci8vQJpGcZ4ddXvd4rdSPmyaSDFNm0sHWbhPdSQzepmS0RjS+xBF0nxzHhzHYqRuoT103PUVlPUvwqhdLZCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776675454; c=relaxed/simple;
	bh=hFAhQ/7nxeeQSvCAqcwo7dGfDVoD2ykGMaHzVR6Ljrg=;
	h=To:Subject:From:Message-Id:Date; b=UxO3B6nR2mZUW04tOVaMKFCmLBc+d/WE42hiVQ0kjteNxeRSqYRKfQ38YE9s8ZBhNfGYfKdOO67aBAcVu+4H8ypmoSaIcFW2v+lfNk8n+c8X2HL3OpQF2V2zRl5GLsjJ6+i7HoKkbDL8LLA74g0bRaWKV7YieFc8IvKcFOUbeiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zhh+vyni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zhh+vyni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F87C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776675453;
	bh=hFAhQ/7nxeeQSvCAqcwo7dGfDVoD2ykGMaHzVR6Ljrg=;
	h=To:Subject:From:Date:From;
	b=Zhh+vyniWpakAKHN3d4zkr5XPcEN3HtcMD9EhIJNHTXT0rByJ5hjU8iVmBmlJGEHb
	 uoxRAfSik8PPbN7rjM2GbnoV2aiv9gG0lXXTyX8NGwbcj6Rq5WuKsqBqLvMmIH97fg
	 cqRYhquUcPGl8vq7wswv7VOoApE+DOGXubOTxICryCPLTfluIj7BVnzjvfZFsWmadx
	 /9MWi8O04G+UGmmUt6mJAaqDi/AKe73PRHN/latePJe6X+LISn+estYtlB6LXXgKME
	 LW/qItwuWRLXaGb/42UutbxL1ly1psdlOq/ZvRxCZa25D60m7zRxFqA8n/7gUEcp9H
	 Lldrkk6bu426A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B773CF557ED
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667545373.7718.1728448345211205817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26dfc86e990559663209f58da21d46c53276d04ccb4224829ccda9bbc507ca75
Date: Mon, 20 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776675453
