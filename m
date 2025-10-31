Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C8C2DEA74
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761950994; cv=none; b=hTjBWPWKlg30JjeJXdRhFgDS4cYuCg6ysd/v5JqLHulB2RR3xHA+0+u3Ub3RxTb+jWnD6SkP8N88b+E7h7avXln9AEYpbTLrcNRpD3EDDnN7i6HocJY8SiKdGrSW5e0EMjp+hg9tOtke5jZLhr8rwfw5LS84Ee6hFAD/ZxdR+lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761950994; c=relaxed/simple;
	bh=wStxe8QBYggou0BCA+1j96YseUGHMxm7qp1cdyMwH/Q=;
	h=To:Subject:From:Message-Id:Date; b=lbjzppUg5j8cXUtcVv2mIDBRjRq04Afc7rVqecHSH7SYfs+bTpWzWX077kYLeG5ULwd+zyT3vy9IWHfG3WJhxtpMBh4EeGpmwBVNnhQ9FAYjdL9DcPpqjJTPchFzqYi9OzsAswKHIyzNJgFjmoqvMLfPawAmPjX93LgY2/+HMIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9qF/6M9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9qF/6M9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD18C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761950993;
	bh=wStxe8QBYggou0BCA+1j96YseUGHMxm7qp1cdyMwH/Q=;
	h=To:Subject:From:Date:From;
	b=d9qF/6M91zkOdEpY2yP/ShuJah5YJ8Est/5cjN2+LHl08lrPk+jgraM7SEKs/Eu3j
	 X1cIiAvJZe4vyJ79krnnBj5aB9bk8aKHsJizruSe46nQ+rMjZBx9TaDu4nBP5VWlqD
	 hheAntKcTMyIP2ZYPeG1BMyhOj3qjxiZV5ANeeKCEC04r0L8VE2L7B2lGiHWEZAyj6
	 CLSvIzfKsOkk8n4hvdTqLc/2+hA/mvGvAw74K8Mx5p6ZH3izwIyMecINKhFitWedcy
	 5THjFyTTrFuwMvdzAvp7DTfncr+OjexhM1NYKD8Slo3NDhxGajwjDkLL8bhQKfrFb3
	 hsl+HdqTw4zLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C5CCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195099357.23396.11336225162781726529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1fd3ef8b34232a8d208eb69eebaaba57691a4be840deafca0100073d87176c
Date: Fri, 31 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761950993
