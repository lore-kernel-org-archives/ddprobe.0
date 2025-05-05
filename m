Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC282A1D8
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746418794; cv=none; b=p2nQUQYV1OsXaQHMCVLShDhdizUOhDJcVK6vil9PF0FdAQoJcM/KPIpSEIiX022tMDaT1DNGw2+J74/Qo3xtC4rgK2ULVEqVHTtKv/BNcJ+vK8a7oJwWbb7O9HFVhUgjWxrlIUJAcZzy9irN67iSZx1LlFUsNS/DDMMRMN9w8bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746418794; c=relaxed/simple;
	bh=/6NkgCjCpXrrBgCf5Mk4OCvb1YmEl7uLoTo+zN/JGb0=;
	h=To:Subject:From:Message-Id:Date; b=ElXNppKMzjAz0aRXnx2YyjdjvC0aU7q7doxtmZffat6CRZxdeXjILlyjc9zS6nk2pfhk50lKmYEEfpKfOD45M52bs+onXfUlyLFftyEb3KWP3XX2Dpel3aSrvSnvVEa/bd9ew99reF1mw0Yjsr6RSAnSviu0okPkDMP+65CdjNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKlcU8dN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKlcU8dN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33E6C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746418793;
	bh=/6NkgCjCpXrrBgCf5Mk4OCvb1YmEl7uLoTo+zN/JGb0=;
	h=To:Subject:From:Date:From;
	b=OKlcU8dNbhL1A6eShJ6j0iwC2pTUKUVRKGYmYRjYWNCz/9oyRQmZcTA44HCQd4IOH
	 23z8OghJ+g9PLJ/bfy6vTSzR0AjKG2n2R1LvxR6lAxPkrRiWId5EJoq4JUp6achX1W
	 QnMtBEdTR1J0gY3N6PqNz68OrxDzGvFe18HTGZZhLfUk/A9iLkfKnxq6WraaKMo+0j
	 rQyTGzgNCDfsJ/KxnI/HRmYKLO56PiaDQ7UevqQ6tPa19nJbAL/lXYChaVh5G4RC0b
	 Be717L7TptsUXeY5d0unEv1WhpbSKfa5LQjoU2aP8tsOsKaV6cIpy4dSVhDv7AJiIm
	 x47E8SDgq/c/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E31C3ABBA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641879362.9229.3253718647531802171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc846d5eda9d65f8ee7a6020c162f69d7708c264195351b62af73e6ab8c35cd5
Date: Mon, 05 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746418793
