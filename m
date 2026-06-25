Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44796315793
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782427054; cv=none; b=Gd3X2C2fG40RG4IH1G6+9VtdAz11G9L5qzdhQ51FjrptI1fCjUPQbRQFwqTEsyQapkV4OdK5rHhSDxPTJR3aJgwaCZBfnfnW6NRyll9LIf9knLMcIYa0kJm0eckvyiy88K7Q5KKDjZRg5DdqjPAjxYhb9lnFGL6HtbpvbcxZHh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782427054; c=relaxed/simple;
	bh=n8U743oHPOgJffYK7XziiFeMZJEZZ7z+kR7n9hdh2pg=;
	h=To:Subject:From:Message-Id:Date; b=BGPcp7HXQ4dbvinJIBrU9LrwBZrIYImPpwYTN7h2Oi4s6o7ETZcGxyAJ9neah3zpbPslxsf+OSMT5KxcLE1JQ2tgaXcynXP02yJTeJTcTnkzRsgqSVEiUzYoBv+Jn55VSE9vvmL/dsnL/O8CYulTxWkA0Ki3x2nP1nHWMyVKKnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjBT6pJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjBT6pJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFDCDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782427053;
	bh=n8U743oHPOgJffYK7XziiFeMZJEZZ7z+kR7n9hdh2pg=;
	h=To:Subject:From:Date:From;
	b=OjBT6pJdzEoLqvlr9lppzcDQ8PmLx5njAVoyR5b7gW++KZKiqH2I38zjzujsC9LKn
	 B9mTALri6gbJrBg16Rkm27YaiMpDAFiq/X95JE5ixLqsGJ2ZTJXmw8L8AVKpOD4d/i
	 KmvrECskzL5TjCWI2KzevL3R5cLQbvkoLnrewuIl7vdAdV8P9zy+9gudkgEKl/nD4C
	 Jv4oOmgV7V6A+3OCReW2h8xiz8ISJ0q1fTXvBYdqfk1WRAp+/en1KhzS/WI52d4+1F
	 HoN2WbKU1T6mImuarxGUi83bSF+VUo3DGXOcfR1uK4OxfMz0Af/0aWClcht9NGkbvT
	 IHfbhijnJgBjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E5DCDE00C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242705371.957.7583529389409205374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a36a045d346287ec18c3d7a16e977c84adabefb9c0ed65fee76a12208ce0a9ce
Date: Thu, 25 Jun 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782427053
