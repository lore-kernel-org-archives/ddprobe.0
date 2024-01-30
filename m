Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC66260DC9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706610497; cv=none; b=STB7Vi5WAKVuqJKzYjKcBia5JQPJtKgLO1uw0eYCMFfx2JyP+j7rs9trrIQpPvyQ5rQFrxzh/ztKzuCxIx4uJAWmFC7PLC0ZgvDDEYtoMZl4SSfca1HBlw4gQJRp8Cx9JzxYrD6d74vUyetgaXj3DyWj/270OEANV2jZJXFcbpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706610497; c=relaxed/simple;
	bh=f10EQvDoA1yK5rYK/nVF4YiIoJGaz03hmREpY53XEQc=;
	h=To:Subject:From:Message-Id:Date; b=ZGDK7UbnMRAsB8WVc047mpJo4KpKap63YsjxEhI2EJ9X7r9GLyhjzMo7iwVEUhxKJOwL9E9Fh5qlNfFWEp8UPsPXk5TReFkzI01XTmjChYXrYmTvS68AfhXR2C1w4qyH6pj+x6UnTNSn98bJcTtcPpP2l7KbZTcUXzu6e3JIKcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUFzNyXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUFzNyXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AACEC433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706610496;
	bh=f10EQvDoA1yK5rYK/nVF4YiIoJGaz03hmREpY53XEQc=;
	h=To:Subject:From:Date:From;
	b=SUFzNyXha/FD4mA9xosI/QhQ+KSYFXg8zlihmVwOfmHekUOQ88pTLqQ/h/6VYtZMF
	 blEYcHnBYA9L/p7nAF4ESXBYqPzZ0GwUdrM9MaNMhUbQa2TGeeD85YV+YnK1O70sQj
	 rWNujWYNEMqzK65W3wajfBguzOfoPt4b9WFJwqwZQfag/XWHgD7ZqLlRleJv4Oz6W0
	 owm/MpMvo7Iuo3Q7yLaU8RkQ1wDfuCZyRBZLBsEiY5w2A7LzXtMfM7GeTVBvVSBBWQ
	 eEEHc/gFGBnxa4mJMcNUF/PRaETdIhk8gHXoDJp7lIa8VH5LnnWfrM5hnCloJu9lP0
	 vJPBQtcMxLHXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC2CC46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170661049638.6886.6272541782774222516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afec3633c51efe88f9ab34c978659e59c518297967ee896358ef5167b727e13e
Date: Tue, 30 Jan 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706610496
