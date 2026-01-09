Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE472221F03
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941634; cv=none; b=qggwgJ8rFNpTKKEtYHxkTEhFaOexGvZzYbVzh49Rcqoclo0TLMwxo78fwjSj/Q9VRZZXzzm/30bsRimavcxea6MMhcQWlqYLiaTW1S+5/XstCTozCQTySaDuzpec49KQCQxyYvmajdNkkJSmdbqBwsLFO+pUnu0qsl+WjP5F2dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941634; c=relaxed/simple;
	bh=uUurwRWd7zaBBTNrGrZCFiUPB7c1iWt2FCqlRQQnIXE=;
	h=To:Subject:From:Message-Id:Date; b=V8oyK4Q8y7W4JUzqdIEAc10fYcEwGddik3m4VnsgvMJdZBxt5Orc/2LdFvB9l2GmpoB4I6uW7/SYDpHI/3IOfGbFobf4uXbLYNwdZor3bmxXeOZ/Q6nVdc6/3YaysasNRlW3mxvsqz9H1WA1bNw7UdUGoJ7lX0XNXdyj+/3+SNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gi/0zc09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gi/0zc09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9ECC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767941633;
	bh=uUurwRWd7zaBBTNrGrZCFiUPB7c1iWt2FCqlRQQnIXE=;
	h=To:Subject:From:Date:From;
	b=Gi/0zc09fyXZS/cxw9KDTqzX5VT5KkEqvx2TpN2w49T2/7oJwu0Phw/P9nF8jMtO5
	 KkDkI6yuNbcftkJk1DdMQjKI950iZBPUWsQ6RBXWlM+xb1E5UIL1aM/5h7cs6yhjg9
	 /q3nXhCrDJbbwKmfC3WVetetMp7QXSvfNesHsTnYp+VVDkKstPe2SGnc5a7d3M+kiu
	 alpTchG9iPXsEpEJBxBfWygFihwxHliPYMhxd7OyKQ47yEjQhH2R7COG/Xtv5Fl1gs
	 PwNUaCgL6RGylPwSpvNaqC7lykFKXlfMkRw5zKFIrARywovPpbIW7J0wlXujltYO25
	 /NFbZh6nIHzBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07CD232E3
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794163357.10539.1094752229517794878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6798636283273a0e7c722c10d0dda2e3bf44e45d763dd4173cad28629f142bf2
Date: Fri, 09 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767941633
