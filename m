Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B3B3B8D59
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765110774; cv=none; b=iXJ/acsiGixz7JnFUgvqKZwMlkEt7hdVEBFLymQhTKP0OgzJ3i7gqr0ugNLtpVSfjS3wDUdQ4cpJq4tvgPgvDqPBxILqr3G5wssGGeCTii8ojJsmpVbSl3kl5BRS8++KoMiOvaWUDz0Ymic0P5LI2MbWmPtWxnakoSPpeGq8h5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765110774; c=relaxed/simple;
	bh=RYZX5M59Q3GRlGBmqLaAoaQcT4eQz5MroT3mPx/aN8s=;
	h=To:Subject:From:Message-Id:Date; b=tV99EMDH7C5C5BO0BoTdJ66pRZw5IV1vEMWwyTdVAPfA9rQjfuv9o62Lo6QNlbJ0anMTa60/X+PR+SM6dMtZOim8G/uvZwljW0oF5BAsVzGhbkOKGDguG6vxZrlKo/kpYxQVPs/wtfPyUld4MBJmvFWg/dH1Ouqvc2mAWBFMmAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rX1wjQ5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rX1wjQ5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1254C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765110773;
	bh=RYZX5M59Q3GRlGBmqLaAoaQcT4eQz5MroT3mPx/aN8s=;
	h=To:Subject:From:Date:From;
	b=rX1wjQ5KWblQ67M1HSw5HZWfI5N7bsS0FoOqcgh2rNvz8lwonXGhb1hL0NnPspkez
	 A2SMxtbp71X2TZKn9xpS3yUK48Muy3NpCTJsZh8gQaB4SRSc8wv1NGTIA8flbcJXbt
	 reVEaJ0Voli1A6eUVc2132zwIu8BrrMYtZSZQdH6Km3o/kBI83uiXIPAtMyzvOLK0X
	 KPv1APm5ViNVIx+2rlLTgWG2xpBQbxuJ+7ea+t4EvoZe7noSuZ0fmQ/hi000x1PLoZ
	 hlSxvtLVaxGiovFnhF6tEg39tUXqssB7dQ4dFhFXcKMzpZIiQ7rrrRCmXBJs2U4KW4
	 Wc3m+BmYEiUgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97574D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511077359.20455.2176949216022370793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3fb79345e1c303cad69561c057f7b70eed6621232350295dd246f45866818a5
Date: Sun, 07 Dec 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765110773
