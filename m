Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12189F9D9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774671294; cv=none; b=htCaYOYRch2pbZhsaaNL+98v809K6JTsEuAkUiOXN5W7/Hz7iuWsZUIxdneJoS//lgHYo/+1YvejbFtukj7iWRh5m9JwSX1NH9xj1DSXvTD0s5L8pGamsuHXQorczByqgnc/qDSeYWR8w/NGomrKasoU6BSkzP3Oduwce6Ni4nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774671294; c=relaxed/simple;
	bh=Upg60enUmMh5KOXffuG5gZsZUvjnwPRluV4HBxF7lhs=;
	h=To:Subject:From:Message-Id:Date; b=sF3eM8Nbi6bwq9XaAHz7qHm/V/m6/WIj5c27NVNtFx8ZZLr+haOqS5wYY16Cr3f3qjAjUUgRbxzHADkc0ZSRPJysnXmAVVliRQsDmAVM2sYJaetW7dLKCHXQg73ArWWuakDUZi5rG2zPaQOjAVftsUo9tfSFo2YsTCtom6VsQ+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPxnZWsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPxnZWsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96ADC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774671293;
	bh=Upg60enUmMh5KOXffuG5gZsZUvjnwPRluV4HBxF7lhs=;
	h=To:Subject:From:Date:From;
	b=GPxnZWsETe75hG6J0zfUC756Qqn719C4oVi/MfLfNmWFnam5bHFnhKDllNoAC8RsY
	 TS+YTpYtYi5VhjImFOAZMh3dbfi+38RmhT97pKFWfWKH6vRJCZcDpqCH65rIFj1z4z
	 t290R1OniWZCm++ruVY8NnSjcPTuVLJA5Yx3JqXm/OrULH71gQMH+APdZfIom6P95I
	 z1tUGeq4vkcVsdXTHdWu/KpXd6eaMRvHgaJO0F9ZLNSLtiz3rL+IE6YEpfKsmrZyBx
	 QtsEA3M8n2abFYwpXBvOmpcQ1NBvIhj5p1nH2TUWgx4giq3IA3xeQVPNp4CceXIe8G
	 poJ9yIjPbJQxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DBA10F3DCB
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467129359.7588.15530110804918057659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb78ad41d803dc93c3d2311bfa17bbefdd2c8c9742c85cd2e28e38dfe145dff7
Date: Sat, 28 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774671293
