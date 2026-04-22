Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA6C2F3621
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776835654; cv=none; b=MclCTph+4sE7dgZRoWDrnjgSntnWAPpfGm4fjoAXkP5s8H9vtGYVOEE9WqiYKoJreUivJzR7jVuo0kT26yK4zt6ue7vFwX1FOHWOuWiXeXYu0VDuXxWitQlHoEB2PRQaNT8cQmeGKLwLrgrUipaWd9jtwpKRIf4OyCrCONb7Y9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776835654; c=relaxed/simple;
	bh=Rhp56elon3g05KpOcbYH0rCBNN1sNNLFPLwtoRNLO1g=;
	h=To:Subject:From:Message-Id:Date; b=h88H0mtM994vJWBmcdkf018d10z1U0/iV+evGRpJvXGRoqYmoXpAxl3Eq4bIbV8y2qxtaGfaAsLjlnA4I/byWBi3MCjIieKGmOA5YY7SrrQi4NayAdeaxpIm9YGmCyDaJ1xUkSNfBdhE3Sxk3F9Tj0WmsCLVT2MrmaLgRjWE5J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQ2h3+QA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQ2h3+QA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91F1C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776835653;
	bh=Rhp56elon3g05KpOcbYH0rCBNN1sNNLFPLwtoRNLO1g=;
	h=To:Subject:From:Date:From;
	b=AQ2h3+QA7BuE3EqUmaGseb2rOpoFwX48re//gqttG9VQznNBL/z+QtSpqzlq5Un/q
	 oqsiSRuLzOxSCMjUccd1tB6zN/aeiukg/aKvH9qvPGe2h4/a38QFNxzWlmrMnWZwf2
	 EGw4k+mkXxuRJ+dGLSjaJH/UrxWlrOm7kEmhq130bPVgHiG+BdbYp42lSLZGvfLaQB
	 bpwUTtxrGvLd3XZ9DPJ2i8D4nHJ5FeUyu0zF8xnwjwZNf/0OoqSnakgjl8gWx6FrwN
	 7kwRuQV80BXLZAQY5rL9oI5kCUC326uRursnNCbOIPFOdNZmClfKWLEgKElceco2Gb
	 oEAUS+CCXK9iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0CAF94CC4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683565368.6007.4029276913805112791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa7284f1cf504976ceaa2ce7b9990830ab5cd168c78a4bc9e8a9c00e7d66a8d5
Date: Wed, 22 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776835653
