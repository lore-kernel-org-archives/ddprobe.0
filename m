Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206B4221554
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770864894; cv=none; b=dItuvOdTbHSRpWKGhmuOt1iTkupE/xfoNKFa2rnHtPembHxgW/uzqNwHAKlzGrreDaeaUVYc3Wm0eiksok+2sjZziX/4qmi2vvNDDu5UaJs7aK7XeNAZk9DWDQOqeqpp605+FTB+h8vPN4QuXJzXW3F5P0kV+4uHENrnVNzSx/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770864894; c=relaxed/simple;
	bh=IoVYseZbwkO+q80jG5ZgCsjHzsp4r1rPXpYZnhBnfsE=;
	h=To:Subject:From:Message-Id:Date; b=K6NvVgKD5B4K0v2Uj09O10slnxzBbeJ9y6Fr/20iEchiFtPRPcwqGGF0p2TXj/xIcaO7OUJGfqjop9rZZRntnP113MyKl8gWnJmNHyX1KLTI5rd69h4FjmWP3GcSVsPIPRqiKdBNko+h0DdiGpcmRBAin2CPs4s5r9xNa7aVnX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7WYmgGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7WYmgGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25CDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770864893;
	bh=IoVYseZbwkO+q80jG5ZgCsjHzsp4r1rPXpYZnhBnfsE=;
	h=To:Subject:From:Date:From;
	b=h7WYmgGwE57ndu6wHFII17bpIrfMsELuv7OMZFxvt8JFo5Vk/1NaHgkWPQK7KBFZO
	 jXZ3C4Jr0BGH8MAKlVylVxaU8SFNHome85dPaxPWMSo9i6DgdEZDhC7A/AjQYNzbb9
	 xcig7EuNQdodtqLhvQLakP4jBJwD3VJ/KQNc60s+CS+/Y03TOiTx7Fmyqg2hz4j952
	 AM+D3C/VcwOEaC3kli/+V+5dwqwgf8le4BsUkORFB97JHALR3KwMmOZf5X6009Uh+N
	 RDOlPTJmHabIYqQY7s4+qoo7u4c5LT+e1iCHRLbgfX/6LcLAgLKdjSaWQdsgIEYT4m
	 6Mqwt0N0s4pbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA68EDF023
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086489362.17009.4261319414098408826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc08212a04a9a112400617d3ee26214614c8603625e05374c1d1ad30b3f3099e
Date: Thu, 12 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770864893
