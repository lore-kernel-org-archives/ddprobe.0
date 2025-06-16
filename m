Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBA0272E6D
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750065593; cv=none; b=MuSz9xb4JSSRAYMZMhjmeIia6dQYBDc0Dz0rVBLoKJTMuAMItK/rB0JnqG8Y9iPXLZDoL4+84DH6w4Mq1s85mlhKgbsLM61fFY/bvvyFV1LvJRcTclQgX5HDE4stt0uR7VwW9YtsrEJS/v5Z4IKCxspBiv7y2MNU/UsYblLODMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750065593; c=relaxed/simple;
	bh=yOahEUXlrWHKj4nRU88CwnjE9wPv9wJkqo08DhrP4bs=;
	h=To:Subject:From:Message-Id:Date; b=bvAT+0gxZOvRDXrAK0fM0qhd5W/gHDVQ1QA5ug5qU5ULunE1sE8UOAL45XaJ1uN1ByE5w4vHE/YnMSFBWXQJNhU1/+9s8VrnAb74UnDgTqWWhUzSVLy8j95n2jO2QtSG5lP+m09QOmY1Yn5M/AfVj+BqoeOPU+j1pzFdySgfQj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kf4m6+gF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kf4m6+gF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA833C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750065593;
	bh=yOahEUXlrWHKj4nRU88CwnjE9wPv9wJkqo08DhrP4bs=;
	h=To:Subject:From:Date:From;
	b=Kf4m6+gFdNCOyFYEtpMXskGTJA+3jhoRDdq8vuiF47fwAwJJ/nxcoNsJXdtti91Ye
	 IKwlaVgXrF2E6urFf6WAzOcL4YhLryUzzRLDTbMbUcAlkfFkKOwrW0yDalkgv9C9hT
	 fnXbpc1yPknGTnO0QUamlvgehsFe4nr5swxkjFA95lLul4wX4C/qwng9Mv/JD8oNDG
	 oodmiK9QJhz/cLFtaIPPb8ykALLETC6EXmLUhdxmn5YKdEM1kRcFuKU5fGB3IUuFV3
	 oCdL8DYRhBrbK+10G2a0m6iod3d9BKddEunLYUqAh48S3Nw/AjD7p9jUKVNBX0+5uc
	 TPDwF9RJd3FGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A230C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006559360.14604.4567954693221700488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ce0133232bdbb710a757f069d441dbcc20d408500f18aec9ec57a43bf3289c
Date: Mon, 16 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750065593
