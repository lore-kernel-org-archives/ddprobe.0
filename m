Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094E51FF1C4
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762760394; cv=none; b=euQC/8igiT8Xv2moJb0HPICv95BjCOpwtAkP0q9HgIyVeTrLb9RQCfbTLccLD7B6jL+D3X3nRlWxXjJXCWQbxcMVIeB9uCumztEa4nITgNRudOV+lCBAuFOOPg+NQWiITjnxd1/Y+wBSjgnG4eLVPR7lKn3MKR1M3NgiQU482xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762760394; c=relaxed/simple;
	bh=0OihdqPbw+SF5Wb3TyXikVA3O5Ghck9huspa2yCJ49s=;
	h=To:Subject:From:Message-Id:Date; b=Xz0yKeDCvTN/lNhySG79aMR1jDSKdFCdl71YqQF3A1m1mjMH1kL+8Ahlxr+Rkyku1DJ7rAidkbfgdnkjn544YAldIZ0FoLSM25cdRRXbCTYAh2EE/iB2gLzp97fxCtA9FsCutGqjXZkqujOoTk9vVlkSYLJ/EjMmDCuRy8OE/XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ims6O/ry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ims6O/ry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D717C19422
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762760393;
	bh=0OihdqPbw+SF5Wb3TyXikVA3O5Ghck9huspa2yCJ49s=;
	h=To:Subject:From:Date:From;
	b=ims6O/ryEtZJgACa7fkI0m/gHQTzqm0aSVsAKo/d/0wiMHhVBlCLO/UrkY79//dYy
	 FeG9EuLtWr8wAOXs74gJqVqKgVILV58Gmx9QMC7JoUAUave+MQgkwvYxfG7Jk4crWh
	 GkhMZ2wkeDuvj0moHFby2DTNZeMdvcRFJcfUfQ3RnxnQXFuLcZK+FGQLrgBjgp18Py
	 Cd7jTXnWX2sRihViMGQ9uS9AkZQ2J6gB23unjrTKQPSEAvcpfnA6g+sFzOMUet1FJz
	 bkLPYQjci2EtZWrQTByk1pnTqPbjLlK1NSUC2RjEa53fKiNmIxYjcFzH83FqXDLkMz
	 cHuo4OuWXEs4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7FECCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276039357.1914.15897022403012411425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cabd706601560dc84a7a9f146bd16a052e8df18a82c277b8ba30d843081421c4
Date: Mon, 10 Nov 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762760393
