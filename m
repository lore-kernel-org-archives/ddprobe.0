Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBD031282F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766139234; cv=none; b=TNi/lO+OnBHSnLITobZF+mFPL7b/ZQ9YkyxlEJPwXmBm8i0ZjwAAU+Vr76lvwXy8ehA5BIUAVUl6N6qJ5qfD+jdY6WH3nHfrrx9fgIdMswPs4QVjj4B4+8Wej3gu70zeux+ZUmFk3aHCdygiDgTeStcPt8+KN+Ad3JhqggVMNBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766139234; c=relaxed/simple;
	bh=q3Pu9plxSp4Cp8WNw2L6An2ijMDTr1pI4gBb9GFZpFE=;
	h=To:Subject:From:Message-Id:Date; b=l4wWkNlnBRETvudW6Gj+Cb890cliO66LFVdyf6abdK/DkU7LJkSb38zqKHA4hjKVdihsMuQbsB9AV/sqIeSv38+nnkwnSmMybCufC4Np9Q9kUBOhoRsqjvayaDrZC1jXFWqbg9LvcdthA7yixDc23ebZeDEPni9oOXy3ZUX5XUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M85MISyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M85MISyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C89C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766139233;
	bh=q3Pu9plxSp4Cp8WNw2L6An2ijMDTr1pI4gBb9GFZpFE=;
	h=To:Subject:From:Date:From;
	b=M85MISyPbAWsiaw1b6H1loQYuauqmoxsIj9ItS4D7aQUkfFhDQNKqPnqWy+jQBCE4
	 FiiACV/rhY49YyDHOWMlHuEIciByH11nhehNrEA84KQ9gMHtGBwKEVbMGAxqUUbevF
	 x+8HYDXUOTnzREKT/RTbzBhc+s1UIsUuKcyaEaRXVuZ42sGx7B29xXYm7pA4C3tFiN
	 OItgobdK1CfcELqvOnPh1LIYTHjvCrX3uO3494EZHCo9uo0ddUjothdZhaQEvsyZO3
	 FKwKfmhq+5b9A97GYfuBZAWgF0PfAX/8keGxGECYJnlL0kdFfIrv2V4gfl5hspzZ5v
	 cvAH9rElXog8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF3D7497E
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613923358.25782.7885627874852323258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6b73a86934c2b4fd1ce056b33e463c4ad7ef2fc8d278f583e4cecc5d47551f
Date: Fri, 19 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766139233
