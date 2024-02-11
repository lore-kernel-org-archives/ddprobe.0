Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176CC5A4C7
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707661097; cv=none; b=CwsBOyE0U1BRw3MF0Mr7Y9+MGwFldb5v785wrNVUvOZPDdqHC/l02gsvjB2HFmAKayn2NODfTnuYuZROqoLzktpjaTkIYdvAc0qSg/HhFrGL0caADUN0bDJ0QdilsfQwjPoShKF5lvfu1Si6CoQ+SvvFFdRXMTWv+bBD6Ork1wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707661097; c=relaxed/simple;
	bh=fnVVnI8hwS+q4n54QcL0aoHzr6eRP3Vc4CB551/y+WI=;
	h=To:Subject:From:Message-Id:Date; b=AQj1EFOx6lIE/QcUqQCfm3bJr6eriIfgzkM/S4BXvkzGxZwRwQDuKTg7OUe++LyWMb4liUiVS4wmBR6uscBqt43EtaHAM60iIgmyjurARK4uBh6wBKDhdLtQgwCOeGZZ3/DXVPu/3ZW2i9qnk8tLlkxv5z+riRPh90AN+4zeg2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8esuQly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8esuQly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 835A0C43390
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707661096;
	bh=fnVVnI8hwS+q4n54QcL0aoHzr6eRP3Vc4CB551/y+WI=;
	h=To:Subject:From:Date:From;
	b=R8esuQlyrcHM7P329zDtpBQdFbMZs6/EePUfj56sxIyNR2rlb1e+S08Iio+39K/+W
	 XRSxcmR5qDmpqcaMIFLhEdTS4xoUb6N6z10jpRzzmw+NohlnDiPGA2D1Ac3sgkiNJl
	 QZOnN/DlpQYSEP9zHGoXrJIMZX5VWEcZr0ZtNFMjXUdRDRrjA2x7nFMzG9J0eSGopI
	 x+JahmHNmWP+rxGYylva+9XIxNOijKQkeetK8ILeCqRmQK9glxXnz9hIxDr8+UCJrH
	 TzQoJHAFOlYGrXSKH8Hb/M30WeVLXcDSFD2ktmF7DobnCKbL/otGcrFAau+iPX8Lry
	 dJayI1v/iMFFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65BFBC4829B
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170766109639.12992.15377093231008555693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a465e91c1d237cdac80e6ec6899b13a20e9964731adb0d8ab4e806ba3b0bde5
Date: Sun, 11 Feb 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707661096
