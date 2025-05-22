Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C369F299AB9
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747928393; cv=none; b=X7oT3xDTC9yoEBwTQxBCxVjthn7EsJhaHpwYULshZIcmydF6QATAro5eFtjhi/vCmiT3eCMcrKOugoo46wG50gTjLtc1jPnywNf6OY5tuv1ARJn7lRzP/fKzWTcUX5SIxYfjtqvn19w0RDAN0P1CdDWH8qMcW3f79bpdvQKLINo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747928393; c=relaxed/simple;
	bh=VKstjvNwg2kQprIlvgUO8xzHzo133wHPXHvt8C8O/vs=;
	h=To:Subject:From:Message-Id:Date; b=dnBFHVFDkSDROwT+1GnIUVtDDLW01k6C0v3T6Ped0D8R9LkPiaFZ/cBBhPf2sSgS1wMgMHwomWIJWAvf7Jd38WpTgDGQJpDjsJu9qd4xf/59IPBXznXLKxV0ORqhx6eM+HJJFos+2nROY9fqUu9+qVKJAe0W7jr1LVsAZEVpFdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrb9mQoK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrb9mQoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37D3C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747928393;
	bh=VKstjvNwg2kQprIlvgUO8xzHzo133wHPXHvt8C8O/vs=;
	h=To:Subject:From:Date:From;
	b=rrb9mQoKm4T42XYaV/2jK30kwBquTqhATUpRP0QpzfSfIkqpEPn0VWZEUCrPaZW6P
	 bTsgU6lNoTcT/orCGQjKM6AaUS9GRwr8wLj8qlz2ztrdlUf3irVnG22o+wQ2xJj3VN
	 hSoYMFhMaRsnvuvv7PiRFlXVvnuvsSEiYWPWJm5Tp6wFJ5JvLFh1cEngJVJk9vi4Yy
	 GHnmaU/jgEDTImJrJa1/MsGZaKP+s9EyK5LiqZ7L5Q7aOmswj1QUXxXk/m6SKtOm+w
	 zJgYUgpoiyANitbJ8NruJUV8805pZNul/IdNN5SY3dlOVJTGg8Mw0d76YT33SVcm2a
	 TqQfIs8lgtlwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC2C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792839358.9471.15085609457856462621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4078ce231b51e42ee3e06c62f65de7c5365be9ddfc5c7032558ce83945da5460
Date: Thu, 22 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747928393
