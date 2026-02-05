Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322BB3570D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770275034; cv=none; b=fAZ6AEKcAsUeDzQIFAq+qFO1xxvl9RTVyuWlz6sVd24fxlKy3tktNkvzgHfEprbvUniFdoqBkfho0RoCHG+vw+2cdkEJcRTVth2kZhhUVtDBPwrTYdVVkRERQIYutTsf4oUkxejAzxH57X+rNjyZoaI2Iy/3C6HJwBd20YGKqas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770275034; c=relaxed/simple;
	bh=/zW54gJ0ZXtq8c2x2Zu9BRdbpOpRqSxosfUz6m8qKiQ=;
	h=To:Subject:From:Message-Id:Date; b=XuykVYNpazyMzx0lSKimf6iT+3BvImC3p/FsoIl5El4IzEyapUNHmrQRAaK+wC4YKXi52rdGTGpEY5DDHtm3j+RGkxXaj4T918D1v/kdbG/kGQ9C0cSN0TcOC6AKnQo2NSoUw6cjTwR7KM6pBFb7mZPfXuT3Pd3+3qXrimU56yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2nUXjC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2nUXjC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54C3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770275033;
	bh=/zW54gJ0ZXtq8c2x2Zu9BRdbpOpRqSxosfUz6m8qKiQ=;
	h=To:Subject:From:Date:From;
	b=Q2nUXjC5XqrYLDMYJIm9HxTFHFeUf9dUnL1wIAkCr36SsJsCHcnJeyImOhr9a7zuL
	 mq1qEBH4yKf60Wv3F70tPrykA9Ght5iyaANMHNnb8ZPhGtgyrXByJpHgjXD3wn3irN
	 BXsaKXmEHLcwbj08zNILwYt2Knsf7VPXxrqyqg9Xx2ZRQUaOBbbI232Yv7CJ+89nXG
	 hzEUDDCA2t+4upQKWvz/gJfXrNK70o+v6wLdpCo48KoiZe0tAjgiJ4oDB+vfFXxWqP
	 ahI4iQG/GNXq70+Xp9zgQOjaOzTPS4ovPPF6MNF9WUg+hgTdblVI37g4H99aYZeTCD
	 lugEa3fLMOwng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A9FE91283
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027503358.21217.11213929570531557299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ed622b04b710172caf886de37c9b444ac38b150041812c92f2138505483836
Date: Thu, 05 Feb 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770275033
