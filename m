Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B3B4B1E6D
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747456194; cv=none; b=k7DoMp84qFCporc5CLI2UHXk/ttng9BsWaf2+cLCXGKu9yLcJJT0gWvvnj/gtq6iq+FVWZpMFs43BCQN+prGc3xYj70uwpM38W90PgURAoohFIqgyaJNBtOjb4YiJWnPcbylbj0qS4QBsPwE4ky4qK12S0DZKlP5hkcSA5SV/Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747456194; c=relaxed/simple;
	bh=aR8sr00+1wQffuuzOIhvuTwQ+Z1pqWCfEM9ju4PO+VY=;
	h=To:Subject:From:Message-Id:Date; b=HJgFzJ6SS9QWtmOMuSparvujEPXro5G6Z3DOaOCFDXz3gDNM7H8PbJQH0+wBYVnsFH6cZ7LMD3Yvg1txZTQpkFlT9zHXMqPfhJFkfkzpzUithEqsa1DMud4gK+PpTkTqHn17Qws2eKJDEJtcp8+UY68KKcjiN8Klm1R5YjMYFW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSgl3gI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSgl3gI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8130C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747456193;
	bh=aR8sr00+1wQffuuzOIhvuTwQ+Z1pqWCfEM9ju4PO+VY=;
	h=To:Subject:From:Date:From;
	b=DSgl3gI7ySR6xde8VW/O5+6lFZcHAZ+kilwEc3WhdFmC+GaXqCR6Y1I7I8cBHkLE2
	 yYj4BwydRHAc4OI25gbb3uLFz2rZ/9kNvq2FL7/aB/Fi4ugnXLOqMXyayo/I1v5Qkj
	 fL6egn905Yei5elbknS7YMcGTmHrjUB3v4GhYJhdN4NwtTznPANhK7lJ2Jc8WZB3O4
	 6wZ6lYOYmHODzSgYqyO8/fItQTL2qh+CkcHAXU0zaGBI1IOhKUwGT2FJ8J1xMahLEU
	 pP+Mkwj4PFNE5jKugMJDA086qDRKadZ7i/z1Xaunvq9TZQ3beQ4gmjt4XAyapVlNaM
	 Co0QDUOm9+KTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937A9C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745619359.32225.17912063992745237339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f50ea2e234af89ac66041f3c0fd9e6d1b7de703c5a6c2956b6826ad76de083
Date: Sat, 17 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747456193
