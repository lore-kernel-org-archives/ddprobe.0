Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82CDFA935
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 10:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743244194; cv=none; b=jdUQxoIYcmjTUGoRSp8dACENMK7QtvDrY6mA8wUEC+67VHpd/owda9h+OJj+hs9UvulR365dosKR0+3gvcJ8T8fHmLrC+mqdh9PhWaVS20ma6H6M+lQiPEuLhA/Bu8cmFQD5FjPJdK2oCdUlDYLmu7fRovGquilMRJgAb/+LiW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743244194; c=relaxed/simple;
	bh=Sw8o2sj8ShTe5vmptwv/dP/azH3/IlWTehK6+Gyf6vg=;
	h=To:Subject:From:Message-Id:Date; b=gwc33DaMYeHMsNNcvPMiIOhuX/bHY1qIjdDk2ZfcX2XQqYQfLjU0LqMSH0LyIm8QnVdFPG9lhn90Bffs6uhcg9n+fVZj54pwI1iw8CqEe01NTpSQhxQQmuK/F/D/Oxp+uHt397zq/8meXIx/UEkIVBbmNKeU0fj9C7whMoJZAdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgpTomP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgpTomP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C97A8C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743244193;
	bh=Sw8o2sj8ShTe5vmptwv/dP/azH3/IlWTehK6+Gyf6vg=;
	h=To:Subject:From:Date:From;
	b=HgpTomP5P/zxZpkov5EIq9Z/xUZvh77rXpXHkLf3UdvtQ/I8WogXh4F8IKBI/Awxy
	 GNGPMDrWbzfTLlvHGJ13CfT8+mPYxuUsQiVHT4hjKYykzvY1eill3iL9WEdZvpdpIK
	 ZIvtU/NkFpL/waAP4WZiPeuXhUn18PtNGWRPUYylFmZLk1axjWfjiQsQFOVn8JfYVg
	 UPJ5wiWwKUIDOCQ9RJXgcFQVrDQZx9Ihov0bGa3h9NGnnDrIVIniUdbDsGTfKJnJUQ
	 BsaYUEsCyIItEHa+aykYPdnSisaIYJDS1eYEqTEatkKLL5T8lBcchWxdlqnHMArB6+
	 lPbR2tK2Jo9ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B224DC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174324419369.2913.10006651343213285228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b718d085870ebb232f81f27570511fe823f1100c6d5b555d40e72885e343063a
Date: Sat, 29 Mar 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743244193
