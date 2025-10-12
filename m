Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BA11A3154
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760252394; cv=none; b=QLP+LJ+AZ47HX+E0TddP2pcffDqg0sIAnIkVeKwU2+ArRRUINQMZXe5p8ncK6TCFNUrL6Zgar12m5hJDXIk9Q9H3z7R7GAxkt7kdMO0oB82+5XKkpEvFabnQD6HoH3fVyLM0znlULWaqiaCYNKfhmhoJBBRGjED9B36YansT+vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760252394; c=relaxed/simple;
	bh=h/jn0Fmqg3jgvYY2sAh/xHV3MwGS/PlFPmCtrj6HWFE=;
	h=To:Subject:From:Message-Id:Date; b=poizxv9kQ0qlCpHobfvOdL6GcaC7dwB1jEjp03MO+fnX/x5rBoHCwseAg0t7MTKc4D0fN4z7yq/DUSY3Pzi/FpbVfV9ZR8sCZPOCXFJtopt8doW6IGeNM6NXMnUy/0IEldPUdG/DwHR7kKEQ0U2rT8IF+9KE0cXrrA4QyWK5jwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnrFWIO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnrFWIO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8567C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760252393;
	bh=h/jn0Fmqg3jgvYY2sAh/xHV3MwGS/PlFPmCtrj6HWFE=;
	h=To:Subject:From:Date:From;
	b=rnrFWIO+E2+DSASOwZ/BOc1l+3Po0vBZcWCzHWPxj3HMKClxNMb+WzO5xhJjEEamm
	 SDhDbq+T0uVfXot76ALMj9L25VT7dXHBhPpt8W1O3gOU9E6rG8lt4WZnnFix7W6aCn
	 S1oB2GHZw5MOwkzPCRFwBlolY0xaZqCuEwAfKRcYd4jZccav7ebGdk1jQcnPH7K/Ij
	 hgwmiSVwN/Yd1UxXzIEBbL/fs4Kjoi0mQs3x74yTzAHkJAIYTh4eAB7J6JmZ9NvqvI
	 8r9l6FggfsIBAd9VgeIfpZnBzDCWN65HXDCGzPVYXDk3hT0MVGzRwDY3a3mG4J2laV
	 hIzId6hC/0xAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F13CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025239358.3007.17290789834593323825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dea1390325fa466b67027ac01c793fd4b4599909817ee63433298dfd2dfebb4
Date: Sun, 12 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760252393
