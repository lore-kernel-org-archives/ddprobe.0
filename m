Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC124A01
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726771554; cv=none; b=l7ByLy4l4A0K06iirLT/Z8u4JVmFrei+Sg5Q+CTFCTWxFQSokLYXxd9G657kGmBSYCozqkFc8ODqmXWO1QbiDXTbOHb7wdEk+dmVUyftCrCAC1ZJSo5zQCRRzR5DiZul0NLR0KdIo4fSxuPO4TNXL8mHs/g0gjhFDMhF4eyVcjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726771554; c=relaxed/simple;
	bh=vx3ZXGR87LvUkc3i6sLi9rMDCvFaYF7laCDE5IxQQZg=;
	h=To:Subject:From:Message-Id:Date; b=tC+ZncJ1A8vux9RDJRvlDDE3oZ8GSItrWSp9cgOogjT1//8nY/+9SICvXid7xqA+1H9GV+jPOlLbUaUMT9RMWcGTnkOASdkyxTfm+wTkrFJZBhP2mBpiN72MDHpnPsZ1i1akt2oez5bkvOlzHWqUYVfKWoS261qDc9T5DVveji0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1nHZeUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1nHZeUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C37C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726771553;
	bh=vx3ZXGR87LvUkc3i6sLi9rMDCvFaYF7laCDE5IxQQZg=;
	h=To:Subject:From:Date:From;
	b=X1nHZeUPTpbCxS3pYJ5EUyUDKQGoBJD0kDyGENZD90zFey34npax7hbGkiHfg3fl9
	 yU203nJtXa70aN/D281oucx3gug1TGOzreZOTrGZ2LKO5ldWUuH7SJzATmRe1sEtVI
	 YyPCXk3fHBlKo7t5/GF6LIYKgeOAz/LozOtQLjJvZdmjHa3lSnFuwf9aTBT0RP0LXV
	 EB+bcobMinOlD6vFcvtcL49aeRH7HnszgKH9cB/fOP14L81z4ZsLtsJxDbRfoLz8I4
	 zhNNyQlsvKzHFZXgGmWxFuuoYT3YdOBs0cKVAXWU2LrSIgQ7UQ4g94RoKgBm3EgplO
	 /w6WU180kPjXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B76CF3963
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172677155359.1838.15547865344096227302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea5f698fcea79814d8a7e5112b5ce4e36fc3487894352154062ce83021ca1f0
Date: Thu, 19 Sep 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726771553
