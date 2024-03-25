Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FCD176FD6
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711336697; cv=none; b=Bla9QCk8KFdgiDKDQBqJsYhaAEt8fUR9myi2HzSKvqtGm13tzqB08dMnF575RGeYDnDc/OB0PUzNaY7pdo2iQyLNptJqy64zDkJ8GyFYpM1GPdoSb9HmMx6Z0LOYES3X9zsscimiXgtRwT51Hesl6Doc+1S0lvEqUmVG95841i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711336697; c=relaxed/simple;
	bh=Cicq9wX/ACN1vz9eEWTb7HFSPilPk+RlY7iujRehNSw=;
	h=To:Subject:From:Message-Id:Date; b=tqdq+Oe0kZV0E6hg9KAWb+yrqs2vxCnXt18pPgJV0sFx7Nfi2lxi11hTHtQ24fCYob0TbdAtW2xYfAg0uS9P1Q2NT7u9D1bnE1ikk4MO4zSro/QNnC0uJVTE5JXjOtRIMLPstM9o05aIaAJq3KJ1z/ojKUWwcqxU08F/vTquGi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoAWNRl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoAWNRl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82CA6C43390
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711336696;
	bh=Cicq9wX/ACN1vz9eEWTb7HFSPilPk+RlY7iujRehNSw=;
	h=To:Subject:From:Date:From;
	b=JoAWNRl7jQFTiLfVMsZEOJGJvSdFG3+IFK3NWDLYU2pq/aqlYFZgqXZJHZRaYMjji
	 x0WKXjve5PntPJhpoFqf/ZST396ezzP+n4B/Q+F27NDwsbCmD+fwqOT+aViwnZuWsF
	 dJAS0PY0skILtEWUqUoduCO6DmW97GVViR0fWplXAPVZMpfhYCMMBi2tjFtJPh9RfM
	 zLExhsn7T6Y+AjQW86GIQnt+CNqAqterzl5rXANAC8nOO0J6KVzuaRbB0Z2JJu8Y6K
	 IqjqGpd3sp+nYlw5r5lxmwsD1kUCwGzSxK6eKtDB0a6Rrw2TJrUn1zkQz0/G9dzsFk
	 gzZ9q6KrAbx5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68798C54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171133669641.13779.15032558469577604705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437c38ec595e8c555a220c7e91ea037c23e8fd0d75750877999271adef2f2ec0
Date: Mon, 25 Mar 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711336696
