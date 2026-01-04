Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B63742049
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767565434; cv=none; b=ituLwec3lnh+CQq9tQ5e1uObGZG3nkGwgcnY+452S0+J0T9Ns7OMA1mvqgQg+Ql1AG1p12Zb45eNUMcL50oPmRBsNz3ko09kaTK6OgRf0P7ejPPysoB/KdHnw7NsbPARCAHZL/Zb1Ea/+0r6Ml1cLOtR2//enUb1JEi81saau5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767565434; c=relaxed/simple;
	bh=OhSNDNUdGClt82x4T7OM+JCHPT0Ymo3TgUaxjGMz61o=;
	h=To:Subject:From:Message-Id:Date; b=p4qdwzDIHo5fVq5jC+DJOeXOXWJ/1IX1B84VSD+WFX/RAoFYwmMaKuTj1X3YyjHwrKw3VBGx+3oQGSTPhCXGF4TSv8qt7wVB5kNl1z/1qbKP65wyqSJ8j0cs8gJX04NtpoMcExZc9g8F0LbB+Nt9aTEZ55PVrwSDnZYYgk7R3To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSRUHEeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSRUHEeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A0AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767565433;
	bh=OhSNDNUdGClt82x4T7OM+JCHPT0Ymo3TgUaxjGMz61o=;
	h=To:Subject:From:Date:From;
	b=DSRUHEeTlwxHLZi3V9Dx/a7r/tC8aHHQDlzhUYO0ZSDnAPSfsnLqGjhNaypfqGVN8
	 Ey/v85Hx8V7rQeC4PrJwbYB3YpE6pnlacIa8QZ4wrKBYl57AMxGBDJFilSAsO5omli
	 eLpUJMjhjymE5t3negQ09W3q4g8BFqZAWHdnganMiPssoVh/ei0CksooDnCtbDZe2R
	 BBBZBnaPBVAttHmM7aEqT5WaNEQCp+2F4BQ6zommB1epTZPpW6/l8RJwLruSJBlPzW
	 Gl5c9Fh7vPRS4rFUuIQmS5Hrr/mPKGAjnZPrwcnKjXrp9/2qeXxWVXrDqdHL+mlL/M
	 PKbvS1OZoyOaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948E0C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756543357.10946.15574042189159926632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 490d86733207737e3ec1cdebfe73944b58170e119efe03f58a4e68748b480cea
Date: Sun, 04 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767565433
