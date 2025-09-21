Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37264262A6
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758473994; cv=none; b=o9v3DUB46E5kwICcOs/b/tcack3vx9sfW3b/Mmak47ALvoe5wTyUzAv0kGT7c7AzUiBH/JK0pWsZmBawnL4TtcXDpmMCV+NDq+FdXXAMBb3AogRp5QZarL/Ne/0T+TshaUVZUf3jrbmlLrXFr276qYUqOT7Pyr+5V3Mqn8rFP8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758473994; c=relaxed/simple;
	bh=I+BFqE/YMOLQvHGpIy+I14hfnW8pQr8Nd2mbA9WNF8w=;
	h=To:Subject:From:Message-Id:Date; b=e2po5Xs132q5KKkOS6xiLnI1+Lrp1xYdDMwb7Dj592yUZI8sLjnbbr/6neN4gUtrsjVAljUJemCbmvXiwlnxFjNaOYvXEtcMV+mkJ6tH6u35ivF/p6cOfl3oc7OfHmKvUAOcNuDnF+sK2H2eYckDWvupL0VNfApyz4KeKgLgUQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPShJUgN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPShJUgN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FD7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758473993;
	bh=I+BFqE/YMOLQvHGpIy+I14hfnW8pQr8Nd2mbA9WNF8w=;
	h=To:Subject:From:Date:From;
	b=UPShJUgNUV6WrYANIhZa3bae9UoS+52R5BaUcBqc5dc6es7ZTnXxKpD5qX1r/yCVP
	 NOzpu4Vnp713vo0VZ8Zt6AprEQWiE7tMGxxrAaPNy/IGuPJM3hgsdvifBzOjC19hxe
	 qGdNtWUF2PqpWAWNPZ0dyw19waF/hmLDkZR0DA6JuJAuEk6H6N7rZKjhzKC2jOVWwx
	 2dVvyRrBhqaj1DvCAmV/yIBdDfbtb5mxOssH+EVJY/Si7C3sGPX/g/NYTdUWHbBCut
	 NTJ831GJAbfEkMgNqrDcyiL0bfCEht0wfaXLKw9puYSTY0MRa+LXIZUzpiSzbeVfJE
	 Ce5ztqS9xw6eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F8BCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847399358.3897.3306023643627169823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f2b245928a391d801e595faf1ca8a05416874630c921981ea3c8a39dd64be23
Date: Sun, 21 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758473993
