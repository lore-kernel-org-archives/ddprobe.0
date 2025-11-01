Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8272A1AA
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762022394; cv=none; b=gEo2853X0qigKdRkpMTYfmZob6OjGWFF/sXaW03w2vPEcRMjlF5yXs5nDijSO3OI+J5bXrAMuoD5rTWXuSmH6GSboYSwqW5QP/UFyIm31XkA0GpH7GpaQ0nyMfK+YC7ma8xLdkdD/1AxLknEnIEgz9AE0v6rzvBnsgjtKKpg0Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762022394; c=relaxed/simple;
	bh=Ewtg3opxTqLRPvnMuO+EfNQJpuf70v0ulpLiPYHjMNI=;
	h=To:Subject:From:Message-Id:Date; b=GuufSCZ+90URs1w5zyQ1suX0WkEI6zKv4NCGlLg4j+UHUgk+hufBwDeDZvirroUWo3jsSfBTLC9wuKxzO+bEbTsjlSlE8aaWtSHO5G+ag9EFEh9AgFQIP+wuyM1PKusvb5L6UB3G1stWG8sN7eTAY7MukDllvR1X38E+vv09Iic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljONu1fq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljONu1fq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8341C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762022393;
	bh=Ewtg3opxTqLRPvnMuO+EfNQJpuf70v0ulpLiPYHjMNI=;
	h=To:Subject:From:Date:From;
	b=ljONu1fqehBd7oWv75KkjOW6trqb9Ys5cmW4Jc8Q0wUWirpjXhSRJmI7oLrpvf6Ju
	 zbUugdSAYrWppdYFtig6sH8Yb7NDm5R6gV2t7ToMf6pA0AJd0RCxJ6ipjRklSEjGTJ
	 A36UltyDmE7z5Wbegcacz5cy5Hm6zjAfOkqqWz2/y000pcf6m37WeBtcDuI7jARKI2
	 jvkepUePPwtvAby7dJKfJdIb8HUgNgzwiGhm6qNa1is9eXnmBFuf9NGC4k8fBaUKRQ
	 mEC9YuHH03rNbeMVsWny4YhqVnzXtupCOlYEtErovQOCBB9KyfRu9wipmPRRzwaU6L
	 KzNXXEw2G1NNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F6DCCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202239357.2996.9510472628864112271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10af77c29b4af50c42fa00b8d04c87284b3552be3456d99cc89c46b081d5e742
Date: Sat, 01 Nov 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762022393
