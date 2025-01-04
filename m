Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CDA23CB
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736025954; cv=none; b=On5WhBkw0NaXRc9oM1Ey2O9aE6X0j34ErJ/u9haJ/6s67jKtmzF+i/AyLZK68dvkLrRYB7qUmhNw2plJ/rFSnUSTn1bC0xFiAyaSAcsh/yV8eUItbD+EumB214Ksd8EG/ywUF2jsxSz59zG79hbGgkAOk0bvbLFC61spvxlLJ9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736025954; c=relaxed/simple;
	bh=YwCN9ug/l4ij6PjLHLqwGJMPFe3ku92IcwflpkBWqwA=;
	h=To:Subject:From:Message-Id:Date; b=GJcLmUhIh9ykJ8Y+fTOpBuk059kZ5VpPYTCTGmhihQQH2qVbipqANJqOa0yo984BHGZkh7R2uSSqV0fiiMcw3hsQQUpOqhY/1a1xchYJ4I0ysdktqZBofWBjWtJygClcRHU5w3YMoo7wJxonCmEU1jCW6ouDjQbhW5o2IDIerks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9I8s1My; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9I8s1My"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61B4C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736025953;
	bh=YwCN9ug/l4ij6PjLHLqwGJMPFe3ku92IcwflpkBWqwA=;
	h=To:Subject:From:Date:From;
	b=U9I8s1Myr6IdieK6OcfdeiYspbexphuPByV5M7CH+Kxv/+gjbUTG2KULmh9mA+OAg
	 is1v/+CmJsB3lNPL94SRQs5A3CR6eipWMVXP8I00LbR0tNJcG8rrQy4de7kv9MK6Y0
	 11ar/IIKPB0RdpcOFVuHOWSdag2kjPlhplqRjMUA4Q6IlMOMPcqWplzJXYs3oNEhMl
	 +mj+NpFSEVA4IXzVXjkz/TWpWBEykWYil/t8PSfiJNa8SfAOZFPrtZnKb3iV9ghjAy
	 NgTP3PsJGBO3I34wqWoqJVJjR0mCTwG0CSbhUj33vkVzwWUO612nXB8o6TFocamS2B
	 6aLYTJ8s9VW3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F266E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602595360.28354.8416308094617776629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cae299d0e01f53a4e32ce7183cdfe1bd66441b4a14d1181132c1329f55c03a0
Date: Sat, 04 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736025953
