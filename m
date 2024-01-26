Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8EE43179
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706262497; cv=none; b=ZBv6pulQx2sU9Zo/RTZZ9YJKfPSHOfVM5nIe/Xawmo9cxlLJzis4uOcTZx/Gh4KeiECbBIWDXLPFFYTfubQcLKyYdi7zyi57aOJUuOyPyPjI0iyamXJFI5UN15BWsmnCKL8cuFDLTVSHs/nmI+VjwgX29Js/7gJeXwchHzSx3no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706262497; c=relaxed/simple;
	bh=Vkcq0Yzihvn144BGasgQ5EKlMmxnmiSFzxL9dan/ZYY=;
	h=To:Subject:From:Message-Id:Date; b=aRlEzxGSbD3HLc0lPuG/RlPBbyAZFWqlHZ7BtGw+C7I3hAnOc+2Mq9PL/S6J+fx18tpViKn9u9Qn+5xoMkkgzy6FDwhj+AMBjIjMmumGKyTOm+bdb/P6/g9e37yaItaRqtjztr0df1YJokdiojLX7IU/+xZJUDJNk18QulTEeoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUjv4xvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUjv4xvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 774C8C433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706262496;
	bh=Vkcq0Yzihvn144BGasgQ5EKlMmxnmiSFzxL9dan/ZYY=;
	h=To:Subject:From:Date:From;
	b=OUjv4xvLI/v8XxMEkPybIvsDlyvEUvyEovvXG19JDAlPZEP8Nj2WMrZM0AFux+DG2
	 PSF4YrdAPxApRhEXb5vR0K+/LXlluO6rJqdg0DYI2kp63RUtLl81vWH6CAlIAIUXjN
	 sI5XZO8pOFLhJcXAFDH1ZGhHqzknyywElS5ZHRZcKTIf2Bz14uIbx5nFTPC8K5p+D7
	 z2n9nsGkO3lV1BUHVoKjquFEHBkgRTKgWXXxX/0jtS1BsXJYXOF9ttsqmEiurRCLR1
	 DChM2sgTV6S6vJoj9FR688hR9mi1u28gGiXe1BjNbnR6Zc36jF2IyWJsSn5GAcD5Gv
	 Df4oYRUInsV2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61564C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170626249637.14724.7252237422418332151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb5e85524516bb32b8d6dc693ab151ecd03342a1d8fd255d57f967688c83806
Date: Fri, 26 Jan 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706262496
