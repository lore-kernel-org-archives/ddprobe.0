Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CAF22A4F8
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 13:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741614534; cv=none; b=rNJ30uzHqXgD7jOreEo/r8fjb0HikBuC4TZWcdMpDQ5h0D8LHSp8xU9WR+jB2tDXsG6e4zhj1e8OpTODXtQPAcG5XMq0lwF7J2usbmCZmX4aNRRZTQxWjr1RUr92EfKmZzcBt4VptoqKMpowIy5GkUVJMqOWkwsV/JUBNbEnsy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741614534; c=relaxed/simple;
	bh=UgxT2wFCOSUA+NqX/WwxoHQs3VeUcmqV82ByvkHtO7o=;
	h=To:Subject:From:Message-Id:Date; b=kYMxvTpEAk/fyhV1o1rMb4/4EiwPT2EsJiQk5O7L6X4ipR3ToveKH7s0MHkFwq5EvUV5g61ZMCb2bazqzU3/HjZGKdB/fymgQ/JW+BWYYbY0umx5lMqDODNHvYcx2gJj76Ccay/EZbieCdhVhyWvqYM3sY/3VV9AFABB1nQygnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuHt89qT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuHt89qT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39A9C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 13:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741614533;
	bh=UgxT2wFCOSUA+NqX/WwxoHQs3VeUcmqV82ByvkHtO7o=;
	h=To:Subject:From:Date:From;
	b=cuHt89qTUXF+wWaLk/ERgwCcE6efk6i2cLXm/aGKa1JdQGsnurVY+w/1auJ20cFxH
	 hjd/55BWEZZzLpJ/5O8FuMcqrgT41+Rev4ClkU5vTr52HgMZsVrIIenCK7t/+bogmA
	 ZCF6gUgvvn2/hqoQv+JaxiKRKoZaSZbFpfxktINFX49/zVOY5/GHf8bs1B9POse/Xl
	 mobtgd78BdiJS2cw2vz+w+BwU5DYakx5Q2zERNPxz8QIK/bn4XZz4wdAg5cN34YmTY
	 UZByj3eT3vLYfMCJRXNDcL/bY9VESuAt5p+3fwT3DK84/h8icpOExWWR13YvnTm+YG
	 yfRUDaWb8PWPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93496C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 13:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174161453359.8503.39342525030186139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f92e03257590fd7b6f70850565befd92861045c144218c93d4eb36d179b0685
Date: Mon, 10 Mar 2025 13:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741614533
