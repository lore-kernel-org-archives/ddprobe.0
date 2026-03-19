Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA682E65D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773891294; cv=none; b=OL5bDaXo/mT6j0uCLNhcxHxV+RxMto2oF1AV1eYoca5sriQTazhyRuTp5y5OOPKW8Bikc1WW/iaAUrYQ3j6bjBtkgCWtAvCREHiDw/Jy6oqoWBUiUgp27gzcsPigOuFnqnCDNLXncbOj05QknzKCNLykQDG/k0RqoLHL5HtxCyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773891294; c=relaxed/simple;
	bh=2KUKKXJO4k9fEIZ5cTODjcYagVcQPL+A82hY/8hAmy8=;
	h=To:Subject:From:Message-Id:Date; b=o3xrAKqAkGtB80fPUpVimxuJr7j8oS+TfD2QNtIIzv7iYDZwpLGgqgJq4xSG+3Bx7W/4O/A6vwovLQp/QENIobUl0g7P78Jixoyjq4dJ+VE76MlZSZbSon3iTTpI+M6073GS3/TA/7MwHllQATBvigFvZrQKQlTMRpwK+5FjG+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ktmbuus7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ktmbuus7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB449C19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773891293;
	bh=2KUKKXJO4k9fEIZ5cTODjcYagVcQPL+A82hY/8hAmy8=;
	h=To:Subject:From:Date:From;
	b=Ktmbuus7aKMA0/Tzn7xUHvrqXQTZyHoYofHolULABeDkjfKCaqu+8OGrP71qe1bWD
	 uE8f2dDMwhl9bHvdmzyhSLwr6/3skOewSYs1qaFz4/nW0vY/4QuW0xVBxiHZCjwx/w
	 p6ISVonNpf9D9sVaFU9isTxbPYEX0IkSLOPp02WlM065VCRXXtmI1v7OXgC/gAHJlh
	 mp3/Bcmq+r7GiTWZPy8IXgAmscheg3kFOwmwzz/VTxiCQ6cNLGi70uqHHQJ38V5HeP
	 L6Q07g+VJlqwoGYAxF2jfAmhaxXU9bccGhLcptZGdyR3c9VxcXSGgjIgKGDR6Umbtu
	 511LCc4Nbzzeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980D1FB5EAA
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389129361.22049.11518464122861969342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17aaefccbc0edb290d742c525042afe03f7a6c7a383de76d5310ea650b3a4ddf
Date: Thu, 19 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773891293
