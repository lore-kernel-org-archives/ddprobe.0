Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69E01FDD
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748917194; cv=none; b=leN1SXyh6hCNlSXpfPtvc6+5Z7wfqWSRFHcR+qkV/Cp6AmumOhN2eNMN2c+S3K5Xe12keFKAoXXNu34a1fXH2XI0p00L+zCdePZjBUZJD+wQeZZLx3qbKj96utA1FBbLtYwPdrSrZm9mEJ1ch2Te63Q8Y9sEcQDeG7F+kwA/SdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748917194; c=relaxed/simple;
	bh=OCKWTYvt8cWsrnPVdW6vs+C+mGva/Kan0JfC+rv84w4=;
	h=To:Subject:From:Message-Id:Date; b=CU/I0wXB8cKCYcpivJrOwb+M4OUOydh+Imd/i3k1ra+5cdbAimj3q7uf7KBWzJzDT//h5LE0mptwtsZoYssfUYRoBzynZiwjstl7jLU8T1b/3LPx7o6GZ3fwK1nu3dKDP8ZFWwV1M9puaCLsUzeVTU7rsDZ62O8lLB28Tt1Exkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0Rlg4Lm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0Rlg4Lm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C93C4CEF2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748917193;
	bh=OCKWTYvt8cWsrnPVdW6vs+C+mGva/Kan0JfC+rv84w4=;
	h=To:Subject:From:Date:From;
	b=V0Rlg4Lm4DiFyAefj0UqH86bOjMOz4H3LddTZWx9ve6aMpLG+bVo/oxL2Q7PhC6zK
	 1nkyHkjeFOxGJ7T3nUvPjd8GOwpM97S8VkoKvG9HxOrpnhO8TQn6srQ0zSrC2H3jV3
	 LZ4iryLGIPLbn6TPbIyIJr5nDHtZdlK69BNeZMqIMpnqTIo2aADxwRXdo5bMSe5EuF
	 hKl7LZAUVHA4eaeJeZBfTRwsscoYy67D4UikdiilxfGsL7EIVNUpZn5OPiOLKNTFjP
	 KnywokcsvydRYiscEvHFOvxSjSFcnefzPw4pJAwKkScoXvNkEMxI+06RGnHBqirKPz
	 8IwXDp5pQuXkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B6CC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891719358.16287.18025635075714583740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d556df13dfce0302b2a1244849abdf1ee87bd590b70a52deefb090624b436fe3
Date: Tue, 03 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748917193
