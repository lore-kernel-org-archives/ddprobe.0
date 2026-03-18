Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E77253932
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773800694; cv=none; b=iNrWgEDnLBsfQ6+wgH8iohlU0EGropJTfcenI0c2F+Nl5OHAuYBFP2Gxuzo8yCv43Qq0bJNyW00WfP0jV6v7XlVth2Ac+Emqr6OnHxm+Mkp9F1EzmpRMZ3TUbzkOqdGJcey2Fs65CL3qhpuC+q7LCZgZkeG2Yrjpj57Pcrh2FTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773800694; c=relaxed/simple;
	bh=jZ5Bu7vh1gpxrN9QxCcjvwc7aUNiKZnrNLwxS0hanNI=;
	h=To:Subject:From:Message-Id:Date; b=f66AJOVqD+tgv2lYDaVNhf9nKSbJDj24RnHIYDGInTkTfR1SUC9Umq38ze6ouokXXGj/0MQn3b8tBkLXtqXfAMtAYaGwNxOK0qqF6N9dYxZu1eopVzxPQSkCULV8J7x54yBldJyNsZA1qXGe/OQG4IVh78QnA3W55sl+0idRovM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcKQXleo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcKQXleo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD784C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773800693;
	bh=jZ5Bu7vh1gpxrN9QxCcjvwc7aUNiKZnrNLwxS0hanNI=;
	h=To:Subject:From:Date:From;
	b=qcKQXleo6RJUjpWb9Kpbs+RzR55IOBFv2ayVmotAxfJRXNiWYsBy1l47Xf5sa6Xoj
	 EvjCz2LDGsG88O4AylXKziGiNEkaTVr3hGX2MX1vTpcyA4UJ88yVq7MHSu3Ki/Vd/m
	 ZRzXP7x1Q/GTpRjcz1MuC6I/CI8R5aqau24+7PZO/PQgDcNKAmYMqEPiLjKWqMNn6z
	 nBFNjdU28l0hqmEde0Z94rBxcrfkMnDJ1hZMKiaOZMBp/ymOC4bIbzKXJ7m3gxGoZc
	 Gcuj69Wn55H25udezUl9cAKscw6OaUxHDdLhii3yirdfVK7LtJGH/o47qFy//bgu3u
	 Plfwbz8I5uNXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933EB10854CE
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380069359.9351.15610487919883729834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04086d61b70da05214486fa5f1dd9e067e38550de4386696cc7f7f12af8170f
Date: Wed, 18 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773800693
