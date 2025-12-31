Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C6031A54A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767176034; cv=none; b=aJwM1abppEFBLuZb8Kjk1yqJ/hW7Q6dS6too6mfFIwQxZ1DKh+UYMq4WiBWYoQm+NpJ1OuIOlucTkI5z01Q8WuPJjtuDC4FkE/Ji01DgBn/otUbNuHygpwIoFHbEfV2hge2o3L4JvjMEVNDonI7Vs6ngHtUhXpq/aQvape2V3rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767176034; c=relaxed/simple;
	bh=pAs3wYRd9qgKqZLK/Ooc1NV5Ecm8Z6khe1tah8Mb/1I=;
	h=To:Subject:From:Message-Id:Date; b=L7cGGpFtTF4sYFwcOCgGDYO73H1iDsdwqCrAY9obBde5SJpHfjAgo2yf8Q1qmb4QybmwpBCha8in/oBjhZXOVSCOG0rRPdCJ4Drk0KWRENXX8YGz4YuP5FfCPJB2iWUt/+Cx/d30qAJIlwNE30sqDImR98nnJy84GFXhvXrUQKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOlkzeIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOlkzeIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B93C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767176033;
	bh=pAs3wYRd9qgKqZLK/Ooc1NV5Ecm8Z6khe1tah8Mb/1I=;
	h=To:Subject:From:Date:From;
	b=BOlkzeIrBlmOlFo3MBACcK5Nd0YvX5tcyymQm19orhVbSlsjOOXboxANys3cEGfI1
	 2HPjs7r6ANHhvWeGhFSmHsTEK/gvB/CAmTSFmEZYVB3qSIWQWNohdK6S6ObUS7Boc+
	 fWjgdTgTXQLbwrd9C0Ss6ddOeZp/POHkMpo2UOIfRnREEnjgRVpxsGqCckb/fRwstO
	 DthVdKOgfHD5dHcfGAra5AaFIQOmuCKkZEPNryDJ0gWW8cWSbDXGin0j1Wsr64D9j6
	 ViUZtvQTAeQw56/bfq2+XDJSClDC77u7KflW6x8nztzLEXMPdHHE+4hvkWcbHNorhi
	 Di7clO9eYcRWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D46EE6427
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717603358.809.16709772926218438730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578eb86c482aca918205bcf77c4ba55c0b3305077d89d9cbc647d1a5ee07de27
Date: Wed, 31 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767176033
