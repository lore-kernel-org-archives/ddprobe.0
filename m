Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A94F34F48F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778254654; cv=none; b=eIqf5dOH34EFZLJluzg5HxGA2Q8t28giM1wBOJKE1oxS2OxWs0nuFG/Y2rFU102b+QG82MyS5qUccSQOhZ1FaMhWmQ7yncyoBLSPoLNqjBJNTWNMt0L0+g3Vy4HuwfsWBSlrH0rmRP/eZpDGmKHjeQpNe//TykmYgjGTVmbl85c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778254654; c=relaxed/simple;
	bh=Pn4o0nN7iIVXhCZIRWOYZ3Tw7Pr+evRulHhxuM81JyE=;
	h=To:Subject:From:Message-Id:Date; b=tnrjkuEiyay28UHHZvb1YsMz52AVKfmrDizXENl35sQYcKUwt8CoHFBHqalUxtX3YQC+nRlfVkPWXFNFqI27mWrvPZMaDIfrJ9Dbvdo27975PHi4bJq4sJxSj7BDDJK9T6xxGnkmuX6uT0oZY3YP76FgqZT8yJZYMSqrOc+8+MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8gOvjZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8gOvjZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCB9C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778254653;
	bh=Pn4o0nN7iIVXhCZIRWOYZ3Tw7Pr+evRulHhxuM81JyE=;
	h=To:Subject:From:Date:From;
	b=P8gOvjZbhRWYCbUDbSBmnlSm5ynBRoEqkOJZfq9KoQM7pWJ0+wYf4BMiXnFq10Owf
	 fPVaofFOncL+gBgf2+aSOVVEphzuo14ObFyqeDACwVlunOrfsbOokS+yfSknSTM8da
	 HmgcBi5josMUAK4PFOXuV0aR5NpnSEu9B+9sIU+5tpLPaQQVreJL/C3dbc9OfH488u
	 A4+4uJiN9XAdixjW0rg4eaKvqW4K3U9y27cHkC2N2Fxxw6UqLfPyJUFGmIjl/x36AO
	 sq1He5rqBVhc0grbSIuDEH7CYFRl1cyyt+YbbPcLiIiCSSGcURZFqkiErtjvnEjY98
	 g8UBaMraguHyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DE7CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825465368.3969.15130847545991852953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbeb065ee00613fa2fc3d3d9c805705fccb4f3c54843a233dbc5e0471b325787
Date: Fri, 08 May 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778254653
