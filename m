Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E1D13B58A
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771465494; cv=none; b=GXMdYITaQ8mpcO9TMb0GAnD+/2y1JKfkq16JUm22ZID3HhG6fhfbB2OBJuVT59aKuloLrne859s44qP/H8lp4BzPTSWZZtq69SWv+WLo7HGMtpjsV6RYMDa7LazZ7WcOd+JXwT9y08XiCEId0ouIqkdGP5ulNG/+vsJdjwZGSFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771465494; c=relaxed/simple;
	bh=rXCz2u+R8rkMV4gRU2AX0y7ws5fD2nJb3ZTTCQY+mwE=;
	h=To:Subject:From:Message-Id:Date; b=hTcJyi0lueLxM1a0ofE0nJbkUkxBffMKYPq1Z4b+y8q0kI+Mm4N49zBpRYGR8jJ9wiIk4yBHxw5F4HBFdCyIWpaYMOaAvWBYD1tEojpAwuTxX0Uz6cQcokVdD40pYT6HiqqV2xLwfCkt95rr+jzRJkWdQDCijTN3zP5tBoS4Uo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6lyG2qL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6lyG2qL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D33C19422
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771465493;
	bh=rXCz2u+R8rkMV4gRU2AX0y7ws5fD2nJb3ZTTCQY+mwE=;
	h=To:Subject:From:Date:From;
	b=V6lyG2qL4mggQlwtiRuKt70HuHGEklVNQ4ZVbqR8IsnlZBFmkG/KWpQ3G8neW9XcL
	 ttj16u6EyDJYfFiSOpvngwAkKkCc8mgL4d7xvQ0TAt8sekUUJN2fPftbu17njlAekd
	 EoRFpiYdF0UJ4EovvTAr8mEQEVLbdn7TRWb2cSEl5FL5pMp9Jeo9pz75H/ts0zsp5p
	 CTsi+7LhnqL/UjYAI5naxWzePaqaKuR3HaMQevCjbo7m0FcwUwd1YYjnRQ1qSE4dTJ
	 Vtz2iD4RlWdO1sALjGJ1RvKKo7+R1eLp/F18+P9pseJymIWn6TVde8f+k33RLw5jgB
	 bSCSKEFaPLgRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7EBE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146549363.7080.9204736680385752599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34c268debe7496f12dfc7205cdff998744c88c69b71af7a1f9a8e150db5ebee
Date: Thu, 19 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771465493
