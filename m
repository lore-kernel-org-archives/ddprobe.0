Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB5158AC3
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 09:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712912963; cv=none; b=HncKYbPYeQbp+H4qdMJBtaD0WON/pK+kvvWXi4CxwSPzyWohKWOeNlzM9hGGXFIjrDUe0FBwne4ujEeIWHTrlQ0+B4z2E2hXYODg8cPJ8nu8ziKP7pKh9GLiPvmX0aSI8jz4MrDBmd2OPLkcVds4qsg8wHXCgxJprlN5WW40DbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712912963; c=relaxed/simple;
	bh=lPJx9uKEnchfwedQ9gxJWvxmXQ6UP4AmVbG3swih8eY=;
	h=To:Subject:From:Message-Id:Date; b=Y7XWvik0l6WvHwIQGrRuH1mVnHxXXI0XoTNdBRquUbbX4RropOpgL9gRN50E4b5Jjd+xCmy+eiPE3Fj1HbDfF0yDc3gl3/EdCRBDEWfLhSoV8CHpfV50P9Ux63TWu88fu3zpTnVrWfLT6mYtwTu+Dvu7qUduIEw1mOCN7Jy+1cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9FS9k/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9FS9k/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A72C2BD11
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 09:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712912962;
	bh=lPJx9uKEnchfwedQ9gxJWvxmXQ6UP4AmVbG3swih8eY=;
	h=To:Subject:From:Date:From;
	b=Q9FS9k/INIQKWn/vhMgUmPXakmE4Wcw6VQsSNeQsLynItADVgFn+qc9xKSUx96qMS
	 pxbHAok1IrcOR/Or6ll1U5vtYDMgE8BNg1z4NU821+AZAuqftX2nEEjXGDKJ221gsl
	 QvGG/qvc/JtWfUG7AQExOufU/G6ZzSbIdQ6plB8MSEy4A2b04MNTgdNYlGzAZqQ9+I
	 P8i2ZhokBdCPz3C+GkRcgthlv4zfR3c8b0DemEjfvroO6qXqga2pVIkHmndqCRlRdZ
	 ZoDm/LFURMvXEVa0i9PH6a7N7L3VjjOJknhegBFEjXI8LtBTAHEFupFz2YdNaynOqR
	 bUAD0IToGd5BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DA5C04FF6
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 09:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171291296279.6859.11456040952771450469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6315d936d16c70d694fe261062d33aa28190f2f0b959a479f4691b88f6872b7a
Date: Fri, 12 Apr 2024 09:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712912962
