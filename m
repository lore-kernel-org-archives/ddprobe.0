Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2132DF12F
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787172034; cv=none; b=AE8EroVjwetotWOTzJIS0gsaL2RLNQRWLSUWlL/4yoQS/IR2fWgAJg2TNqC+6eHuqIjWsMcdA9RLjkxT4Ul1CZmwmzDGDyyXSYKFs5XhljMQiQEwydQwwa7HxniOWHuW2jTuqKp5OpFHHzXaQLzNUDc5JTvyfgbaO1/LX/W/SOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787172034; c=relaxed/simple;
	bh=A7rx0xSGBZwM6iaJ6ZiQo1MZCTwh+U8a28pLWqAMwIM=;
	h=To:Subject:From:Message-Id:Date; b=hjnPMDLEC4x8+qg/3Gasi1uHQGKNuPRu+wgw6yzzUpL/4pwgGQiVrvlYWy1GEb4ciGkJric4BoJgI5tD/L4A1szQ4QUzwiIGp7utJTk2UEQEROqbC5+qwIH6AMZELklYvY76FSoi44dnoAzWheDjKekN4TmZyWUdANMGIGapu5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1yMUm8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1yMUm8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7F6C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787172033;
	bh=A7rx0xSGBZwM6iaJ6ZiQo1MZCTwh+U8a28pLWqAMwIM=;
	h=To:Subject:From:Date:From;
	b=B1yMUm8rUxFcoqyQu8VmWQaxUy1oYFE7Lcvr3PTkCeJg6QcAfOjTLnLwfn4RR0hlT
	 XbRrRNQZoFLf3aMGNKCcNm5YxwvGr6u+CY9B67rr8Hp+1TjGxiBfr7NZN2Dk6es3C4
	 rXTYpuQKgRiBHcTvhTAztxzbwkgwbv/ujc7Mk62tfpq9fskBHOuf+mBE6zblf1PSEf
	 DZvVSlTMPgynBcUG1gPeviYRPtCxHeXqaLm0TIaCMdVNw1phyuu14kTBmNx/+tIm/A
	 BsOy1fnwVbsF35KXcFEz/uFeQLTqybMQ79IcxiehxJ0horiTXe/JsONs/rDTzzMpA/
	 RDpluSOzVxiAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B215AC5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717203371.11166.4394201749559729433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45a3170a6041233e6b180851156a65fde505e666d53eddb5d43d9cd62e19cf4
Date: Wed, 19 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787172033
