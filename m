Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3742EEE66
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791244834; cv=none; b=OxovtMRSY5D3qjVTuC+Xdx5RQiPy8O+dYYtGVCWxDPMP1UOeDxI0jRbgE7YvuuO/JLbHlwj4ojZ3UI9k5l9QVN1PZwN2c8PkKFBp98Vw+6ewT6wES+nO8z2w7/3cn/4dGnbyOTO8wFhLJaqHD0c1lJypOz8tU+VQO0SgE+hWNEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791244834; c=relaxed/simple;
	bh=WOGzAUl+f7UU+53DRHw6eWuv8vZknfJGod1eS+DbQ90=;
	h=To:Subject:From:Message-Id:Date; b=DUBHSFCy9Zt0eDBe27iZ+uA3KKG0E0eMNd2rT7S2PB0m8jj77sUObUfMeL3PQ4WW+7JB+1ANb9LTzD2JzhCELJnR/H65eA350mFMxav8sc64K33x7li1tXVmh999aswNiJel//Tt5C+1mPlYlB0+x/xExKM9kYlTBWZk1z4PBz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNXSlOo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNXSlOo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC241C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791244833;
	bh=WOGzAUl+f7UU+53DRHw6eWuv8vZknfJGod1eS+DbQ90=;
	h=To:Subject:From:Date:From;
	b=nNXSlOo4ZcFxkWpLWnOrc+5RaLGeR05O4qYxH0yj2mbR/L6tRP9kqD4s2j99NwbJH
	 LNI9JSi/xS7b9T9s1pRbHE/WhBOUpAWbEgl/DEM3/V528cyaHVik0YhtNlAEPgS+qK
	 pBlhJAL7IebCGxVReEW11vwige2hob5TuhxRT87aasG/daYL7xpaVL0vcPHdv2XC65
	 Az+3LizFT279jyg7lX/SEXgsRnwFFTisw4sU09tKarK9/C9bVBfWGe0HmKWJwRBv19
	 OjGA4YBjVtyyxUSq7wAQ1OdbvUjrXmoHYtNt2HfnTwflwSdG1RrUxygSNw+zOLjKXk
	 BQm+O4gMTkdmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8AB0CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124483374.6407.14557383192763434310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f2aad64759f9a93fde3905ebd231c690d652d14813915c0507c524db17f06e
Date: Tue, 06 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791244833
