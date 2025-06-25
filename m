Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D40A2D9EE1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750876794; cv=none; b=fBxkaqEK3Lyi/fbc9pqbPWB5yj5Od1SAP4esw/sMWNAu2MlgcTYo0gj/KcaeecoLjSNKscrHE5f6jWYS6/+LOVE++g8s2G7YyDlby5+KTJ2IILShbikQzdK+xyGguAwdT61XFCHKIdRbdQw1w2ktZoskyLcBiltUf/1PtlLeP/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750876794; c=relaxed/simple;
	bh=Ibe+Pka5FvlYZiaBbYA0itH9zXlpBYMZWfsAfAciKLg=;
	h=To:Subject:From:Message-Id:Date; b=Fc8BorTHysNBrORhLS9rj4cF/N6WaERsn3I7WOU6HitDFBKcyYCjQH1Zcow0CVX5r1h0+zIxSio1JkoAOmXpiRXsNhVZIwiz1C6RWtzG0FI27BKCz2zxj3UadgVi2QDbGHK4mUtFmR9uLH32qCM2+0upaBo6ozkPNjLGVaRv0ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaI5TGql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaI5TGql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 993D7C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750876793;
	bh=Ibe+Pka5FvlYZiaBbYA0itH9zXlpBYMZWfsAfAciKLg=;
	h=To:Subject:From:Date:From;
	b=QaI5TGqlwJNYZoIjDAWLjXmwnt4zrIFmwGedHnVLDFapi/jqUrkjHi/Q4zp0ZiRf9
	 tgonqve6CsQ5Cf+JHiZMWhCsmxjtTcm7q5r5N2RNUwyauz2sbFVzNIU7Odeb3x/h+y
	 ceUe0rZ43H+6idDt7JLV5pzV8yOE9kr8G+pNKYlktkWSLeB2PQzOTUy88Q0uCmibSt
	 FCOT6mDasneqWmvMO+x5+81DK73NMRxJLkY0ow86YOhWNVs/s7H9/7VtRx3PwVQV0R
	 JNRsc6tEHgn+MrfEPSZ+x6GavT67s/TLbGK1AvcAVJLHf+1/PvSLlf5wyPbWLCdZ7s
	 Xzar3ewhc6V3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC11C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087679357.24974.12760949228081195321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d552deb859992bc875230a9edc91bc931bda5ee5c9c217806ff04907091c4a5
Date: Wed, 25 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750876793
