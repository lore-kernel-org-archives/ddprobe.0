Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2451D24A076
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773196494; cv=none; b=dRCmhmtTBEUYPeK6bxqPn6NufVAcEYTo7zYH128Djo940t2hLrKiDwx+YX1/xea9762Nd68uv/yOVBbAzIJDgCdjwUhkuNdHSPXG5BKIvJ77LqneDe3K2sseSIhyIEG5UQXEx2UvtGl8y1rFIz8GBfVIlPFuH0+7bg1jL8UXNTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773196494; c=relaxed/simple;
	bh=dlSJE3n9BU+g6Av6hdQPQtt0YL9TqYUV5TYBKlJeX9o=;
	h=To:Subject:From:Message-Id:Date; b=ZXbdfqu/AEYL/ie4MZXXVg9ItJLgpcdtc4MgAvISwk1j829e7G4WJZs2tt8XKeM68zqSpBV4Ni5h1lEWQP6A2Thf0K3lNHadb+ocIE5c+JKNbugPf9Mkq/z9Is17p0UqI+asuNuqjnu3CESycljeu+LSUfQtWAvY8gti6xvo29Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQbNKT3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQbNKT3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BC4C19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773196493;
	bh=dlSJE3n9BU+g6Av6hdQPQtt0YL9TqYUV5TYBKlJeX9o=;
	h=To:Subject:From:Date:From;
	b=fQbNKT3lYPx7WufJ+yd8nFiIGp+Qi+zD6DcTXsSvnB9pIFzL+vrwxq4qpzXkkxcIO
	 Shexl1sZUqTDOmyJjkuuM1IOuBX9UVTAd/V+Jx4I/D0EoHSe93vTCidGcaC9/srFVT
	 KkAJ+n9Rj/fVCKoZrrg3lG6t4pJKNOxDRcixhHh12PiUJ0yOio6kSDnblgJDusyQfF
	 tG+J3cHgr9bGPRdkMth4Kh4E4LyOho9HBYrUopFIpc0JMpkdW5bbJ/MlrsRnaLyQ0T
	 1wBhQyMGIXA5+0ZoeDbCzO6hTLrJtGQ+grRIHjGmjT+Y34FdcXW8ohna+cXjrdERWY
	 +G6xFsbhBWbxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CFCFD88D9
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319649358.17299.12195031359756507023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022c0dd8f4838996143cddef4c720354b69adc4858993f30e2734a44391e267b
Date: Wed, 11 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773196493
