Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E6230498E
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771659294; cv=none; b=FirvpoeTbIJpMZWurzurT8l3gSZbGGGXFcLtQ7D2xVx8MhAzmmOnBNAjM7v5Idd+2EeDBdfaLAgQJu/SQBgZ8Z4FpJRGHXch8VWxs0Z3ZrEKLUzoEhx1X7auTlUyh46Ik0fUUI8oyqmIlasePQOa6Hfx3DRBEDP1xs86bqZmIiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771659294; c=relaxed/simple;
	bh=JpMGCwAjvflYAqVt2Et8imfu+3VHMX71Ufo1nXSNJuc=;
	h=To:Subject:From:Message-Id:Date; b=EraEN53YeyKoHtHtsg1HxqvEgkgWViF9e5NgdamuUxQLx7RZtVTpi2ZZ1jQi1jy9Zh0iRK7YZytWHyQOiHLm0EsqMMn+Em8iPJCZ2rMhN+efIqMgJJK3JwcHjdXvLHFNIINVtm7OqsozUzrVSORyQU4JHmtg/NfuJd8C4CupAew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+6G13e3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+6G13e3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B445CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771659293;
	bh=JpMGCwAjvflYAqVt2Et8imfu+3VHMX71Ufo1nXSNJuc=;
	h=To:Subject:From:Date:From;
	b=P+6G13e320wW/0D+iVcK5I/GuzJP+M8fkgHcHqRTOoFCdYYWIonkpnLQGaEn5W6EZ
	 hfGmSwh7JBkiNCWMaUsWyBsq6I1vLwqBP6iMpVPYFFyu3YDQsM3xZ5YXXrLXLQ8vRQ
	 SRtDuxm2+S3IaQVFG29VcC9IiknK4IWk1PDJxUPOeIdSzz6R6XiaJYxwfWgP2fECAD
	 jJSlOM+I+smUFQeBXqw+EeDkFEDNJkqH3YU9zbGRgl0NTIOyHSqRg9qo7Tn49PxSNT
	 ibDgrKy46hr05cPfOvrnqmmDO0s3rvgyF1M7fRw5LVackUyo57GbJVX0Z2KXqvtGYA
	 OYz6FHWOOZdLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A573C61DC4
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165929358.10204.3223742959556992246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f53d3c08c810f098a5426cea03f810f8a28e8a33b266c8347c66648b698bea
Date: Sat, 21 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771659293
