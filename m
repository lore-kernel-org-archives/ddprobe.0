Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376F62DC348
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761995994; cv=none; b=sABpvfk3H3H9q3rPDJqm+ZChmYx2WjgDGi3CNKk4MSC3NbIsXnePazoQWcV0IaKIQiQmn2S/GMPvDh7W4lJ8PnFRrESfwV1xJVUzJlO696i9yZZzqnLOrCFLW00Wcp7sUg/iIoL3JdIHTiJQY1lzFCQ/4QPusTWvmnSZW8DRJd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761995994; c=relaxed/simple;
	bh=w2UFEYLXu0hVZ2hgWDPcPV78U3ed3JFJOsWF7qnq/EY=;
	h=To:Subject:From:Message-Id:Date; b=f7EQM2E9oe8ICcvmG+XrsO3UO+uYBlz9CnyJ9zVt9vOq9QK8Ot/NpjRDJgvXxHreCA1ciZMc2QwwAitN+MA30QQCge6sLdUK1oSUvtBGCXRLVq+H1kO88j88aSeGYK1VQaxihgdETmbh73qQWhbhKPo1m6+NbQuumvhVfJ/R7x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/M4kCac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/M4kCac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7FDFC113D0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761995993;
	bh=w2UFEYLXu0hVZ2hgWDPcPV78U3ed3JFJOsWF7qnq/EY=;
	h=To:Subject:From:Date:From;
	b=j/M4kCac6JypdgDICMT4xVR4jGKiYMGkWgritGjEUliNiXEclpKoRhJiLNr/ACWW1
	 QvPy2KoclPuYriPq+SNpkFC0yCa/jUYAHZi+VzkrEjx/qVMdjsudya70AVQFh7rzHf
	 m+CTdqEtOw8t7gFwdYFSvBqj14iN+c2rS6TWJ8/AMzfqHVFqOkT5GRBW9GUpUzc93v
	 a3IHCXndlSGhpLtwIaopfQijPciPhC8Fz/r4KtY3JAufdSlre09SEmG8bma9tJ8B83
	 XGvgjT0ZM6zBm2r6g5NqsvBXCXmD3dD/MrpLONzz5PM8x741WYITCTO8dv60WYnTs7
	 ge2j+pXRrgCZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C8ACCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199599367.4995.18083100931082518487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db925480ae23db116c1fcc61f72b629c5fd13f7681ececdbd50037280df814fc
Date: Sat, 01 Nov 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761995993
