Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F6621ADCC
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 18:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741372134; cv=none; b=Rvcu+97rOPJ5jp8TARZg4/5Gon4MNJwamfWiYT3SlVpw6yFg8Jb+UmVfjQu0/VlnzczK+LLfC6LYJT8APmrGCUZd0TwjPJmVuoKkgEOu1cTH5agZdF9ksRSzndOGAJqbEdSXNGeOmx0mS/4fsHWYH2py4fIQnz0Pf3ZzaeAD/8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741372134; c=relaxed/simple;
	bh=PWrYF8cXZ51sFczlvWSaOGVMdo1MPySb6ao6OkgmVRU=;
	h=To:Subject:From:Message-Id:Date; b=AkZC9XLvnfoV2QCD9zV4Bh5amBwAkQQkNZnI7j1sxgj+yu0meDCoPfQTG4vv3Ytsi5ISUeVpVsQ3tj5PuaQihXHhyg8hbIM6T3OERaRtb3DembzK9dFPFWkjd5z29umjisuqxLKgQAUJuYb1K87goQNS5S3QubWnBS9owr8pB2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFcpm6kG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFcpm6kG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75D7C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 18:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741372133;
	bh=PWrYF8cXZ51sFczlvWSaOGVMdo1MPySb6ao6OkgmVRU=;
	h=To:Subject:From:Date:From;
	b=KFcpm6kGOo1XSmUSMBu5jN5bqTJ2GGhsMQW4HqxqtyngVv9Eefc8/fS1xRtS39N94
	 tESkZMCmDKSYxCWoPj9ddECCYs3Di6D8J47YVGepyVfn3eyZjafdZhSIFWjRifB9sW
	 udeLPXfnTnX37eHm/vPhsXh7rm2vSKZ6niQnNSbKmbFdOfh2LZyPDkNyJ6ELURvQu4
	 4Hunb1Sdw69MbGDXDOzkpAOfFvTlS0PK2F0Xb2JI/0LkDmFTfpbGZXTWIPk6b2AdQx
	 vpjjVx+3qBddaoDJCy/oDizIkHI7pHbdj6ua8wItrZTjAuXzKYGnG9knB8/xhRG0ZN
	 /9BPcK9i/0sMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90741C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 18:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174137213358.14063.13538364579308056880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c280add0bf9b5fb3e23c10da02b8bce767315050704edff31c084e713ef07d00
Date: Fri, 07 Mar 2025 18:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741372133
