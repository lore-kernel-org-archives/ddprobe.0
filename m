Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C902211C
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733692554; cv=none; b=nLRNkCbqtHwgBxHMlSipcnNUj7LM7B1r94WhpIYUhUrG5nVj6RhMXk+guUjgoib/H0QjAuHnkVgUjdGXLXdUF10uJCJhD3acisD17joys/rlyy8MDABsyC88w2blGF7lTVF2GOvPeDQLaECmB/QSWMOyCzPFSvsKJG1+roPhKYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733692554; c=relaxed/simple;
	bh=RKTUeXj8W5cEGYZ7EugizJnJ27ZTkmHKlNYsgIXt6yM=;
	h=To:Subject:From:Message-Id:Date; b=uaA9Iq+m7S02Dzdu2o7zjIXNFuNBkRS2kgCd4P8ItOA3LpD/Wth3+/jCmLUTbLVz8xTaVEGCierdHHwNBBdRFmSz8dctT9JL3WNyen9HB6TkUVGxJ6bNcpmidgBvG7SZt3evXCDvFDWbBc+BdZfPgcJj6iW/Qn7ZFCVi/UEr6Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmZO0ZtW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmZO0ZtW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4947C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733692553;
	bh=RKTUeXj8W5cEGYZ7EugizJnJ27ZTkmHKlNYsgIXt6yM=;
	h=To:Subject:From:Date:From;
	b=tmZO0ZtWk9ajsvWWfqqPYiSYK1NTbUHJWNLvxru4rsiLGfwcMgc4yMf4EAPGqvPoN
	 oGzJz8wvrHMWR0bAnVOsieTgRqGmWh7Cls/l0kSmF8/7bBiO1a6kAA4qft8RhgYVam
	 ORsejgb9mgGTKYe0zb7w9bdJnU8m+O2/iZyZ8+bqgCmiT16JhTMnYgC5le63g4o5Vl
	 e7r4kMFfvVW1kGET+7i3tqdruhJMQxyCCv5PDvD7yZQK5SCymMg+WdWp99wI2A36Yk
	 1dj1HpsyGm5kQwWCWlch7QzC14vrf6BakYDvlSv4xdvNSIEvRVAxdzMBuoT+YGSXgd
	 B6NA2fyGQK3xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A7DE77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173369255362.7070.9197096791780664606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce541846e46ba004348149187d6256d35a5337b40b3493eb289893af0f6c47e
Date: Sun, 08 Dec 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733692553
