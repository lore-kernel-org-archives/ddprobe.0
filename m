Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0F646EF9B
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786733434; cv=none; b=eDuYOafLE/1wWyLU7hNufY8Fr9dOJUYgG9YTEq+tqhU01fqqv1Adr3BZYZrEWXdv0sJKCWbNSPX6Ci+2H1bq2z28zioTOJoAaTqchOTL5WK91wYh53jQIUj3UoUyg9sN4Tt1TCmzZK8T9hd2tepbivEndoTgfEQo7qRrMfAtnpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786733434; c=relaxed/simple;
	bh=dwz0K5WZ2nAxn86PFvJIzTvQl4vHIBjRKe3tIiaqK34=;
	h=To:Subject:From:Message-Id:Date; b=hyq2JBCwXHxsZM7Gt+m6Xomw5C34RpCg+ca/BmZE04tRNEn/kZOGWYc6+1ruyeAtvqnNBAQsy17BlqeMV3qzwwMYSPXReewG0ZPLuejGNgF9C+/OIrcKL1upd+LGyHnT8C2ycZPxayM1PuKa/QhWleBZxETOaqoClYCLcYF4KQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pdn294kw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pdn294kw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DC7C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786733433;
	bh=dwz0K5WZ2nAxn86PFvJIzTvQl4vHIBjRKe3tIiaqK34=;
	h=To:Subject:From:Date:From;
	b=Pdn294kwsfmJnQEgYtzuVV+Ot7HHUBkxz440WQuFC8I11zax5LXRx0Q7Yy0FeT2k2
	 cmL9o+sMs+PetP2bZPfuWnJ1xRkbZm0661aq4xmvCOh9SUXVcjlJtllX8KcPZJlPHn
	 IBj3GlvG+F2gOfungtg8hMJSUCvFv7WgoXexLuJ9Ld+n3+DNSgnzDPIMPk6IesH3Gu
	 j2NcORhkPI6BJEOFLjqy1SGmT9ovogaWIilOE7dXIITHyYBao8o+xlMsDSKu/mfbdE
	 kayjti9xRXSiU0EZr235Azhnv4e606Qgm58Ox96hY3ChMlizjezxvHjlqhm+DV+Gvi
	 b2B781hwTQOHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4F7C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673343370.29360.9294629725364275877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7607a4930980e3b9103fe9ff871f1c537563c4a91bddf24d445755ea865b4cb
Date: Fri, 14 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786733433
