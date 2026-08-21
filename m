Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7241EB5E3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787321434; cv=none; b=FcXFG/plb1KTng8qU4gq2bvREHJqvOdm45TQff6f0DM3NMLvnnbNOcUolvaF5bFp3SYAXiv8bKebrovQaHU/DS3EWWdhJshG8KbVeYdn5cRXLHY7v9ODjrGygUBhq/kM8SSIWFY+D5xt5z3ZlZkeIKHKOXJ8q9srh19KkjHC2ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787321434; c=relaxed/simple;
	bh=4A7Naj+iFnrSwOlpgQ81uR8Y+AKIKw3Hqbu4i/e+Eb8=;
	h=To:Subject:From:Message-Id:Date; b=tx7HzCO2WisaykpBObNcq2OgXdRPB0UgJodfb+UEl1ceGfxJBeWJ41aHVSkRIhhhdnKrp5XKpXfKBjd7u1RVdF/Se0MDGz5bw/cbRbHBZ1K/lESXha2mO/+JyUMATcMRrQ7bmPGgaudtc+bdHEutrEIFDzE3Fm4P46Qhifn7pCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBpUsDml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBpUsDml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5627C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787321433;
	bh=4A7Naj+iFnrSwOlpgQ81uR8Y+AKIKw3Hqbu4i/e+Eb8=;
	h=To:Subject:From:Date:From;
	b=SBpUsDmlNlh7uRHNk5VtrTlIumqeahfB0KawC+nOcJL6RZMJVhNlvFfjwk59cy5Yc
	 Etyi0rMJ4LtdCEJvGZumu9FANO4O5GM2dAtEPmjYIhNxGgliizfDK/8HQ2C896EEWP
	 iVgmxTOkVu4Fzj2+sjAViJg9ZSqOgdPUEcl+l7SRryHQ4zjweO8YuNc8MOmx43Hjtx
	 mSTwtmU9qAtqx28a5s6Cu1I8PoFSP1SSjf2hPFdJiJDPQhh9Zc/PuTVXu17tKlJTaK
	 nGfzjwKtrDyWDExbgVsCo9cXG4hu7ihlI6w1A1MA3f0LICrre62lrCmo6CX4uoAoEl
	 k8JQrEZd/5KsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB751C5DF93
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732143369.12230.146867521600458384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0013b2cee61985cc5951ba7c6ad7769c55a5e5615cf0702c37497150af0e4df3
Date: Fri, 21 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787321433
