Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291F22D7DEA
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778601034; cv=none; b=VLu5i2net4/cd8Ik1Z/cLc6rkBgKOZjkczGmSxGQZkvcdWdvASsYTX+9ZzKbHCcnpe8DMtMdi8thVxlM6JiSCZdCot6B4Q0bUWnpJLU+17TX4lUBH9T+ugMcaI2GThQSGQQhD749pAz7IKA2Xpe5XzLzceZCJGfUXthU2aKNvPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778601034; c=relaxed/simple;
	bh=zr48YfaYK2KXkr+M8eEqNZCVoJL5zP207u+q/oxC7Sc=;
	h=To:Subject:From:Message-Id:Date; b=oDSzuJdj58yY1HuL9Dib65a4l+UecQNmhJwmiPV9NyZM+9q5YDiwl0j4lJQ4OuPoUieflMFDrM8cApqB6hBHb2470UE6wKILTDp2aP96y7EiAJGRxuYP8ocJrXMKbTPVyb6e18xwYXeZFhJPUrblH19DLKnBJRl89c0ndoDvwCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkAdDvld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkAdDvld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CBBC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778601033;
	bh=zr48YfaYK2KXkr+M8eEqNZCVoJL5zP207u+q/oxC7Sc=;
	h=To:Subject:From:Date:From;
	b=EkAdDvldRzhQKK52XVxjhkeRDu2bIW8YoSL5t2KaOwlX9UZSJ7HRI1cc8sznGTZb0
	 lrWIN4nXCdjXhKjEyIKyrPJ69Ece53zNZCb/cy6jxM7vjUSMZWTissJIHKjjHqWpVI
	 n36bMVb522bRef/RcMpWwpoTvp6E7oZc2OLSC0eOc8t0RijVR0oXdKB26gzB5cpmXJ
	 92XXfwbACXhhwwOlTsiHIR7Jzx92Sn7tLWsTydJPKS/2DapyciMfTjR4F6d9jgofLK
	 TUEiT7K47ENXbCmuJvjt0uLICRscRUMzabBU4DwcCKAO0M1gO65mm7Q4eI7/LBsArw
	 s9ZwaVkWqm4dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3BECD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860103368.24853.8157102435776052155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0333df8daf164c21134498085f6419a85d06609ff231063f7e76a566c13567a4
Date: Tue, 12 May 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778601033
