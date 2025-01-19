Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546796FC3
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737269754; cv=none; b=kAMkhCAQVjRuB0yduhks+AQE2XykxUHI4/xb9z/u8rQKkcYQnJtQWPfmF2mhu+A0mJMv3YNGT5cg5TSc3kR5JfHpCVnzzrePsSLfVDRPE6OXGzNQjyrut76B35pz0KmkXjxxMuFU+Of2fQ+GCoePKqvVfdTHSkfSaKvanZHgTnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737269754; c=relaxed/simple;
	bh=a0l1Aw2VFbzr3iJHKhPJAKdQhCqLkOGlscLPoiGDSfk=;
	h=To:Subject:From:Message-Id:Date; b=SW70foH3BuECDB/EJv31omcSWt2TBjI0Q5FrvRetxrvfJ5bkrkEjUO654Jq6fga3EbFOyZtwwZgGlGSQPRRpOzcSDN/niFuadGm2VDAg05EdCvzi0Jw04tlJePjLVzVKIDb0WNZt4+Kg5NJfDUNMuaT/xO/fIXLVEc3oYUCJGw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlRwDKkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlRwDKkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1419C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737269753;
	bh=a0l1Aw2VFbzr3iJHKhPJAKdQhCqLkOGlscLPoiGDSfk=;
	h=To:Subject:From:Date:From;
	b=VlRwDKkDbeVMEaH++JJVZyGXDBDSR2qkwmAeeYN8kvIQhxtyodE9WHJFX8EHrk07p
	 1ICqgPHtqP23FPukBmmlnXY9V3S45SW/nqOmIQGb4x8BQN8SYDyb5Bmbp26cSkQeNP
	 1uJfaV2L0r7fyp15/7WRh8gzBMEqFFhkjAs0sIT2SF1nYmuntZCxCdPNee8qR8py+C
	 IgMXkAERuSzXIhu+la366YUlnFr9gRZp5Ut7kowNz7DDAnfGKrMehfG2A78qt+DyGB
	 FxZp4YI5WpRAXgAk9jkAA5qBiy8dc9nNMSjPZBHc7PFkd5gVj2lixFXfJpeH9QfWnm
	 +XDMr3I5MhFIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B429C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173726975360.6919.11506686792198816962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e177f805fe06f0d6f6fcecf5aa46c9449208fb1fa39e3401362d01dc5bee26
Date: Sun, 19 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737269753
