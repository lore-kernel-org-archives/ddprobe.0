Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096203191CA
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823634; cv=none; b=ioiJI6GnUCoh8Y+/xb/hOJ7uewwmIkKjAtEctPicqmJjqL2zzANpuyoAKDZsjB2E4k0oUyQKMwZmucn7/toQZuklmnf3gmQ6uMFjWxzBE9h7Wp1QsaK+3Oz36pJAY9oX9o3XzjHpnJQrP/1x/vPPbPTHGwayPRez5JuohDIbeus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823634; c=relaxed/simple;
	bh=858oL7cqvl+7DfD7/2ocaCCnksImGnMfbwbeXZGLuX0=;
	h=To:Subject:From:Message-Id:Date; b=d0tVP4qubAAaMjL/4uKcO0CqZ4j0wQqiegt3wRLFw9W4oUJmlmKqbeM3XSt4WscBBdUJoe8fmlABlcDoScqN9qgiMfeTg8k0CLLlBDIRbxykjFOD/VTxNXfGl7JjRovZHNitJ8THmgcOWgC5aD7R2hJeXtPSwpO2lorzHAnLjxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiXy7ev1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiXy7ev1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56A4C19423
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768823633;
	bh=858oL7cqvl+7DfD7/2ocaCCnksImGnMfbwbeXZGLuX0=;
	h=To:Subject:From:Date:From;
	b=YiXy7ev1ePUxfJmbEMI0NLAX0owAEogMqxTRxC6iyhLuv8i0dg/N52snJL0RfJAri
	 OOJOuv3rBXF51YnJK/J7sUHaRP3d+WOEoKIcxCE2JnDQ2Ddq5QKMGs7xTc33od5zH6
	 EqbDf0q3cSRw/jEMk7eRbXxFx5KrMh0HWa8oZVaMnJ3ar9xFRTasz4GrqoLxhQnvkQ
	 YYtQtInUiBhjncPc/PiQ9KvMYk44aC0p2LFqvoeZpukZD6ztE8EMQE5JwrjuEQKzbr
	 Icyg1xzfKzR2RfWcbMbJeIoEUsOzFnoqtgmzjdoG270OtUwPLN8HiccrirrRLdyVcl
	 Rhptc82bZ356g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EEFCCF2F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882363358.18109.3524927799140776618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa779e85251c31ae96933acf2865be023fcbd54d5083f9b9697ea667870ad3d3
Date: Mon, 19 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768823633
