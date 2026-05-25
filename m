Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4251E345CDC
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779750754; cv=none; b=fdcg2w2YfGW1xqTK27/sp8ys7JWSf7SdQsh5xEbMPygSFw9wBQBu51epVqIqreaBHYaIU68Eqb6VOdIpxcarBJc6yDOoRuSS7XuaBoZ8M/nkw3u7bbjeBzb5+E+UpH+YyL2MBAXQBVNC2oMrkE75rhRJSqfriiZXlTNQeu2Lsdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779750754; c=relaxed/simple;
	bh=Y0G/iPr+i8eHk1Rkgl+6gZk9uDKkwchmbN2t0dSA0Nw=;
	h=To:Subject:From:Message-Id:Date; b=qQUlznRLdpoKN0QyeMWL7l+ifLWDZCB/9EE4x3xRwRjEdq9z632I8xo6eaKycJDRp46+WnAOIMl+3rbldAQkCSD4RndZOT171NikOjQV9G/Yd0ucAMQTUN64CzUxr1e1y5WclGWVtJZADolVhTp6QcQzr1NoOBjtIEAoUIFFqkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oksq3c0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oksq3c0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3B2C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779750753;
	bh=Y0G/iPr+i8eHk1Rkgl+6gZk9uDKkwchmbN2t0dSA0Nw=;
	h=To:Subject:From:Date:From;
	b=Oksq3c0DJCPaFSvkaQepLC84LShWOZvLxo25DUfHGmsvR5DYRpdVAX3c648Hp0TRK
	 78tVSxBUEfyA4mXd7YC46YHi+Q6POkDKpcgPXvpDfUGNdmW8Jy1ZdtRZOs8tlb/omS
	 A/JTwFJkgn7FEVxOqFw+1lIoBUOV8uNc/KOtRsIY3ao84SUlp3vAHRCf597LntIHY9
	 L1giyLtk9TlMNNwV7JkamE3MwnpWTaY+tuFoTictE33ZWDHNHcKCH38V2p7iDK5A4A
	 sh7uF2G1X9wFpiQgZ91udozxkSE7zzv6xDuqmRVV3DEKMrzrJ2VXHHrB3N5Iw/Ifr8
	 e9aEWfkMMWD1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A3CCD5BC8
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975075370.1823.7357729342110565747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28623f7cada1035904ca65039eb12b34b9a62af68aa592d6a2f3180dd869890d
Date: Mon, 25 May 2026 23:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779750753
