Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6533D66
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738442754; cv=none; b=ArtR7tqZv1SKy3469FKTSQKSTiHv+d9l5jwGwGqiBwJG5m96uQyw2cp0Z+y+DiQ7EtftT4cYc71s/JQ2+Oqo9jbi02UZe2EWkfzCVQvLOkgenLtT+Dk0WlTqFhr/pkpXYupyWCeS6uEr4K0CWYU3GoWt4NZWa3CoHWKBc46aGB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738442754; c=relaxed/simple;
	bh=8FIAStSzWIDnEhi+7BJ87LdC33Owu9l8v5WKn00NlSo=;
	h=To:Subject:From:Message-Id:Date; b=iTaxtqTjW8q+LNVgf68DoYxaJxOjE1C+6KTbvGCCVteqksNQaPEP/LBK8uqKGK5/RSJFG7Mu3Ffu+INHbGcr/E4NOscXtfqZmPIC84ilSUCLOGBsb2N6Rlm5dywinzPwCe1hhIuJbnnMzwJXFRDj3HTMzznilrlCc3RfAwXRufw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnTIKs+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnTIKs+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DAEC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738442753;
	bh=8FIAStSzWIDnEhi+7BJ87LdC33Owu9l8v5WKn00NlSo=;
	h=To:Subject:From:Date:From;
	b=lnTIKs+dkyqROp+lcSFA9eu/wS6PJl0zv0Q0oTJE7Ekp+6kAbwOqQpdfLsxFJKsLW
	 hhPxNe5uW2BlJriFChscNLRXzpRFy/pHjjVyB+dX3x39qhzKzqNUU0vGSdY2qVsMPF
	 ULLot3EI7lI3ELCnd9SGRlwLfMVKlmHIVJXZINM8OFEQc0AbrO3YQnhhQgcajSRpUJ
	 FQXP1gXj1Ex8Hue0YzgZMpKeBK2vEH+iNprhHUA3bdgZcBX6ahAxwxvOCMtrnpZDM0
	 GK5glikStOwfBIwCWRf2KJrvWC3SjJGx+VKIJWAG8dym7Hvx3VTpgGH+MSsa8S3fTs
	 mYpSg0BONxRgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9C2C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173844275360.18903.17025439579365397290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9288236e18d6363ff1c3836e58b0f94addda3830bd362199f06ec57961d2ab3
Date: Sat, 01 Feb 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738442753
