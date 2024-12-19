Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6B7222D6B
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734617754; cv=none; b=SJbX9zEyDpcY4Px/HEgl0eK53UVibU8dQvmj83c+3Ub9GpwAYULuFdASE11EDVqkp3WQXqBra/eJepaXblI/Rr52XXeSGd80VJ9gxvTYb/q7cL6GXtaZ+Q+EIO8tq54m7uyf0YYITa09Tuo7Iu8sYa5E0J016I6zTwUnXb631bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734617754; c=relaxed/simple;
	bh=4G9Bv0k3E2JGxNbXdRZS8EmxMznSPbIkVPafHhqCN0c=;
	h=To:Subject:From:Message-Id:Date; b=AAOtGlh5EBQA4t75Ws0bIPYbD9MEt+dqcPzo7Ua4MbzDCN303d+iPiGcr7yjm15lq/VfnvP4rFe2mZQ2sOHmk8KlmPYJ73Hj3zCv8eLBIL84iVvrUb1tZzrU2HW/biLA07EFjKX4XNuLy/Msl3lI/R+DHycOJLmiXDJkFXV5jrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xz4/N827; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xz4/N827"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9CCC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734617753;
	bh=4G9Bv0k3E2JGxNbXdRZS8EmxMznSPbIkVPafHhqCN0c=;
	h=To:Subject:From:Date:From;
	b=Xz4/N827wCwuqzVJjQTuWatcZ9kHTkMCoZsyLcvk8oNM2Y1yzZeG7Ch+iQP0sfjiV
	 1r0tLIEK2S/u9Dx426vvWGppoSf15mCsvuWQkK57Nk5TQGgon0/wuDIsNyrTae0Tc6
	 BF641YviFajBV6wZHXF+qCjqB5dS7XFFe+fBHmhhc3vzmHP3G7ETxX2EIqqTp8RjDW
	 c4iNJWJccqs/2fi81iZ9Rpl+EULuABmNkqa7G+04cG+pBG9+9LyW9jh3JA1EeKnM5M
	 hdlYqF0Dk28JmfD9p/q7lOLBBqKHLE26KtcygIp45PbwUT+WIL73axUY0uWTSmiJDa
	 GwObgSsnu/H0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7A4E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173461775361.2668.4578680399457702015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd67de42497e51129eeffdd24d02b21c3ec7f3ac88f3948354bb7642213cef18
Date: Thu, 19 Dec 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734617753
