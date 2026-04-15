Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C79296BD2
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776236854; cv=none; b=cKxXH2Kehxb+DayE2eVXqlIDVaWHAtQNA/Z3pd8hvxwTclz2w22IAMtxR8AGHI7TolDG11VDt6Rz02BDlg+H3HM4tR6f/jtvqsNndwsTmYsE815cxroT03ktB/8a2Yn0c4rIO8+tSc0lUU/dLUaTR0I+uzn2VlM1CDSuX2kwB/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776236854; c=relaxed/simple;
	bh=nQSklDdcqS08nP+uAvu1OiguRQmAb1IKZD2BhZuaEeY=;
	h=To:Subject:From:Message-Id:Date; b=CgSn/nKqMG6vj6XpMveqBKPZvF2iJILNXLjfAF7cmj9cemN5qvHW7Ll53yjgsrYWydnS4JJcE6GLsHfqB83+CrnWlpmt7jvbLn8RLvCD0ASrwuxIlmuPWb6wevh5UOYoCqM7/n4JqTlkRdh6fxw7Wjjl3QsfEaTyC0n7JZVpG8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/gM6RRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/gM6RRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3F4C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776236853;
	bh=nQSklDdcqS08nP+uAvu1OiguRQmAb1IKZD2BhZuaEeY=;
	h=To:Subject:From:Date:From;
	b=R/gM6RRiTg+JL15hsKyD+ehNnODamRvn8i8raTNl3dArBmTAER1mMOYxSFe/AYV05
	 qjuk+WKJEhHQlK40zwmHYdLKDiuz1i959O+LZ9FGNTX6yTNuKoVgUav0soG7TmWJfe
	 grnqxn5BBFtMk8JyLgkxlCMl/cUmMigfV4/Td/U5Gs5r7m7aPe1bkzHay0fDl7MNP5
	 7axX6SfhuaviBC2VxeQ6CBvFC6skAiQpH5+kH5WzqVQOogfOiKCX4ylMJWiE0/iHKF
	 yaIvfDo4D8X9ikiJQ9zWFM/wyW5dtpMBzTpK5Aix7/86G46wpZrxXVhdIcVssfUOtm
	 JW8dPFroLmVEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3F8FA0C3B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623685368.15701.16888979262247918704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be0a7bd07b4847b1fe67a0e3e33af59164dea67ff9d45175ca712953070d2df1
Date: Wed, 15 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776236853
