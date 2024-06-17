Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F90415FA7A
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 01:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718588903; cv=none; b=VzmWA1HsMzb30PHyjW0XuZLvaY3ENVR0jQ7gqTTWXTlx9UuLqKlmmk6Loc0eATkjbSpBIoNM/RqVuNQQr1AFXjexGDW3k1UWlLqwc/Grcm08hIuWV8LKZSG8NIXLJcGqU7Q8TkZSrANgRhtZpbBQMePdM2WIITDluDddCvDq3jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718588903; c=relaxed/simple;
	bh=jEzTvX9QXKVag1NRlrAXZuQesr6oM+ENRF32Fx5nhN0=;
	h=To:Subject:From:Message-Id:Date; b=NvdZ6xpUUMy0jCiHsuXlgJOIXYLRE1UL75rnLr1zRvzv0QqAotymV6vAdV9zWVtJLMk9n7413oAu0wC1QUdfEa2HtAW2t12urUq2XRL6oNMkfnzBjJKadwECsz48WJvt7RkD4TBsyoFqeFzxckWy3XOp/Rtv5/kEQ1qKqObwuVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XoY9XNsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XoY9XNsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD427C4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 01:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718588902;
	bh=jEzTvX9QXKVag1NRlrAXZuQesr6oM+ENRF32Fx5nhN0=;
	h=To:Subject:From:Date:From;
	b=XoY9XNslfDAfZ1UxcqXHBXbDLW3QQFQ3tKQxUVp2PCpbNGJtdP5nt5wwW7jDC7qe/
	 qpuEgobV3Slr558sps2IjSVTBR43zZraavPLTSXzHTivAInCSWGsqKouALrmpFtA7k
	 Xr9JayGWIWYdUsYMw6q+Xa77wJ87Rc7hySi/gUkQM/H3tCLDzjSC6ybOSIIz1s1Jsr
	 VJu7jz+vTUlD1lSbWS1OYVPwjTmIzluemm728DoKygHmD2fGa3nO1xznH3VULYaOmF
	 FNIWyUIRmDXTROlySlMStuaVnq++pth6oyiYsVNyy/4uol5rthBdrFccgC2+If7CEn
	 9D6uvMnCOaf1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC41C27C77
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 01:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171858890280.29080.4169628907763316023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a582998e4ed99998bfe4cc65463b9ce30df58f1b49d49e2774bc906912e02647
Date: Mon, 17 Jun 2024 01:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718588902
