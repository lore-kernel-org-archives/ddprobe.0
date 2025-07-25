Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305981E8337
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753453794; cv=none; b=L37M/I7LrF0OW5+QnS7+LR0zNBGK5mEDVBD0NpXfU6gliRVFFyRePsKKqKlh4PsKsRQDCVbTZ8c/ewQO7jRG8XR/9Wx01nxhQBODuaaE7il4JrgIzjevNuW/jfYU36hp8sD6lgNaJvHtSsh03944pEboPYX3gQ0bRjy2YjffBv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753453794; c=relaxed/simple;
	bh=OuL6IXdqSpcMeGQ53dsOhs52J5VsxLgcy/15Z6SoKAE=;
	h=To:Subject:From:Message-Id:Date; b=X2QHeq7MsgIe979JQe1nvoCHKjY9pkitjTMm6A2fJ5s3q0IgHMpYM511UhdR25xWfD/qhH86lFgG5FJVaa3Jrwn/ZYtkUd04pLunHnPvyjdnHqIUwmX3kp0ozKByk0Bl+rAu+fdcSvttRgq4XpOTqZrB5wEnKgYuee56628GJDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEy3Yfn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEy3Yfn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AAEC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753453793;
	bh=OuL6IXdqSpcMeGQ53dsOhs52J5VsxLgcy/15Z6SoKAE=;
	h=To:Subject:From:Date:From;
	b=qEy3Yfn0dwEFLMRN4rdYDmr5t5Z8WnvAOKiVPuH352+HSpzQIbfcmkEwfgF/t5Kay
	 RuYqnqQgiwMnb/w8FVThC5uSIeUSXrxelRk2FpGCROeWjSENYVAWPV63kRJwKR71H8
	 cSnbum6Tv2beWPTuFiYW0uo6xRZE0IyqZyRwNSCc0oDPjZvQFufmxf17k7shbYMg4l
	 RWWb1NP5z3hXCBv9nbz28vJz29jANA/YJfj6kQoenQG8DvbtCTea7mWHLuB3FeYllx
	 KDwOGyScKmA+YFiqN4UXZzEeGCy0OV8Ghx8IUmWjujsNuB11M7cu7jkFl+jHUYIQCR
	 DV8ngQvwMwkkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC3CC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345379358.7212.12400152680418210694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1bf2569278b69342d0a4a7f60008681b541719ef31518f19d52215d55987a2d
Date: Fri, 25 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753453793
