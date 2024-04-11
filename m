Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40024502A
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 16:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712854163; cv=none; b=JKYdH/OVWZ0lOEJVdnRYZT/XZWhTjXHSUb77XtDqeJWgHpFbedoARk9wY0xYULPrGq+m6yIZYyqBVbqqphdXqRRsC0KRQkfKOHEdS1Hwg02/Pd8LCMuKYYd9PuUzqq3F2e0/WtZTeaatMiV0cueX9EMdADB6pR9KeWmB4qZ3W+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712854163; c=relaxed/simple;
	bh=7knwY6DTEeH+lVrwKXLO3kJLMWP0mFNnNgA9d1HjIEI=;
	h=To:Subject:From:Message-Id:Date; b=Wp+SxETtnBDfpeFCg7cXDbzFfQZ+hWY3haXQnrwGcp7a0Druv3Di5rhZf9Ktz7hW+l1BwETeRXNo3iiX7JBSFikZLlH/FSIAHrAbMXKsY6fbIZcugO84hewvyNmoK/bg9sijYDL9aKAhHiHu1VziXtl0SpUaQ+XRSyQHhMThn4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAY8FyxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAY8FyxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1751C072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 16:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712854162;
	bh=7knwY6DTEeH+lVrwKXLO3kJLMWP0mFNnNgA9d1HjIEI=;
	h=To:Subject:From:Date:From;
	b=MAY8FyxGFfkMdU1Olml1a04a4yssR/Iy8SmbBSTN/2WHWTewksvzPn834+6LRfsoh
	 wV6VDO0FCxlCO6ixB/rSjsAYJEhkbV9TzO91lJhKsIk6ks+s5qytODxXubyUX24Vup
	 7p8lpVzMl82ePUAO7t7FwwoI9IGAW9c/6htuU0XeaOtSXx0BBYpj5OAKNKfYMhBDMQ
	 f/1zvz5YnRL4osQ/aON4akp+ykKs+3/XVmUg3Z6A9fF9lJB9bv1FDgeJQL1EU+0EJl
	 4zcupAtrTiQDHyoTZPJjbQ4/7FYGOvzdlR2/bMEhS2SuTTGzcYy27ErfUFK/QkHJz2
	 9VmiGASceBFIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07CFC4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 16:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171285416277.19577.9842791821760393534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda4ed136bb11174e9883bf3daec1741f487f69a7db20c48a06cc266bff329f5
Date: Thu, 11 Apr 2024 16:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712854162
