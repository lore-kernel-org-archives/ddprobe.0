Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF8F2222A4
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 18:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742497194; cv=none; b=Vw/JN31j418im/xTlG4hsqduev0bMb3o/5OaA2maues4Os8TvDrlYHICLxyGJHDAsYXVBrwcGQKe70/cT6w65P2GUpvC7iRKxXvoHM559D0A9Eocu+ot8jIEyz/5o8e2+Ai+YBKXuhH+fp7Sgi28DehB1ybEbnDXByiGMZxRzf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742497194; c=relaxed/simple;
	bh=iLFVUJSo9qn1LRIML9EPUOZsb6aYfRWEbvONTjlXux0=;
	h=To:Subject:From:Message-Id:Date; b=gk6oKWYx9cqBWhwPXb1HSI1gGGflUtO+CRAbrYdnZVWtlmkPM0zNR2VihW7n8+JsvZptB/TT2t7nScdbAc09gSZn72CpYsaFQU3BYSFEX9+b7BDJ4v4sTTuM3utuyfeNVfgDUNMhJhiBOhRVfR4e+tuHYrcZVxS8rBGFoJVIMxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbL6ntvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbL6ntvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11448C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 18:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742497194;
	bh=iLFVUJSo9qn1LRIML9EPUOZsb6aYfRWEbvONTjlXux0=;
	h=To:Subject:From:Date:From;
	b=JbL6ntvMzEG8tZ1s+M6fxrFhje9jO2CoHVhf8DL9dzZj22yBCalBc6e19qxtwvpJS
	 7gb4hjL0pRc+s1B+IEsk0hv3lVblfH7FIQMj9+8V+p8aL7zd42ecdgkBs+DK9W+cCL
	 9gCUO9pHOceQ5DEot9GjZ3Gw8WjP+66XM0MpmTWA6SmalVOuy8eAgOxhhSHyxA58oN
	 RZmQfOgeJ2MGLt75ejVj4ghlzIVluRl1aAM0eUfPnSmLT7rJf/hNpTuoOiqn7UML6K
	 Gk2ADkiaJwEa6ktCqXhw62ZIpOqBEKHM4UXSbSt5p/9682g6L9OFil1QZ9g3KCTDT2
	 83mZsRGZK1zKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5659C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174249719366.12410.6082851088975939497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647dc895e13b7be9dcdda21786e7b84010b90f6ea331a82905d9d426dffaed25
Date: Thu, 20 Mar 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742497193
