Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5539F37E308
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786740634; cv=none; b=Hsf/n357EXzG/6zPOj3ubdU7vE+JYyMRIn4VJa0HOXs0BRaVX/eIFFIeCQ0tMZCrjb1+qkyk9Q9Vvw/ekrTqyj7J151iXHsekdjAEYElVXvEcuKLwmrB0aiVdHUj/OR67eJFheztb2UaUHpx2pZSKFOnk0S33x7TDN65s7PFdkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786740634; c=relaxed/simple;
	bh=6K6gSRWezvjN3Id9PQX/9IeIR2Y8Hls7Kn632W6dNdo=;
	h=To:Subject:From:Message-Id:Date; b=qicxjx/PDqndyJcpw+XbnC1Yi2KTxsgUEPT4RGDhT9Pntjeg9Zd4fSiyasyJ8ejzkiWTfjw+ZjKap8m7R4WJwmlmMqlRJpbUFse6aK+ekJizSLEGCoRVtDdvWJMUDePYwvyBThBmGTxR+xvnqKbdKHRokGqvL6GePZp+YAHooCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMR0eRps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMR0eRps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50D2C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786740633;
	bh=6K6gSRWezvjN3Id9PQX/9IeIR2Y8Hls7Kn632W6dNdo=;
	h=To:Subject:From:Date:From;
	b=iMR0eRpsriTWYzIUnDhJ0TTElUqQ0gsIyclu+OG4ApwA/sPyX0YCVFdWTP/VaAFFu
	 +XABVnRQ+3sgGpDqLWNwU+XYXXqMGS8+D3OfPHpVNF5nf3evJJc8k0YPVcolQWAlF3
	 KuKyAhl7Zd3q52xu9XL562pBAmOKP6bUoDrooEgVlp/a84awm6vbVi1J4rMki8UeUO
	 L5pQ1hCzjore7INh1zhW4j5lpNdpF8yUw+50fRcASicCcFQ5v/G/BA9vgFL9Rb/izZ
	 7qhzTJS6jqhYyDA17SIhsorQX9zvVwrg9nzgZkgWyMb07yDUQeTJcSKj+A1UDLEsop
	 WA5ct7Grz14hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CFBC5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674063368.14377.5783799757558368381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5390180def1f3eac35cf0acf69057e02c65831a455bb3ec3cf5371400260b62b
Date: Fri, 14 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786740633
