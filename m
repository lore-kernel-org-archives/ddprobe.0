Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E042F2900
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761116394; cv=none; b=e+0YV8M/WjW41GZq/pMAbKyRwZpCfERnO1mO1o7z8LKmoT7BpVwRMUozpEBv66HejODRGckgh/DtegDmsNs2mqRK6LK9FKqiYNomVDCkxobb3lykevtB7eDasAMp23n3gSQWrUv7lsdvpFQ9QRLIHnh7OldyDdFQm+V4vjQRXe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761116394; c=relaxed/simple;
	bh=QqH7rT/XqSS3V7g8NN9/dH+1Rpqwtbp7zKlwdnHVfgI=;
	h=To:Subject:From:Message-Id:Date; b=Fg+cwfox1jnmnqPx5riEVLh8BhTnl83oh4blMJRQeVuwTN2pGv/Hq2A6H8oEOm3lvINMKbb+u2bAMSvxSd4kzvL++2UKaCdbDJtvKuEeo/lrj7kK0bGGCd+QqZ1QjaHi09Uxq0Za6nA7fAE6/C9kMbQdVzeIUZtz6sORcfaAahk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/0FDApG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/0FDApG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A446C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761116393;
	bh=QqH7rT/XqSS3V7g8NN9/dH+1Rpqwtbp7zKlwdnHVfgI=;
	h=To:Subject:From:Date:From;
	b=S/0FDApGr5VMfuZBJKwP0ZmQwbvxlP9n2wiNCxxmRubJXHihNhTAznT05EPNYFT3B
	 0eGZHxpiCvEEzMAPJ08X5ahp0t5xxKlfezuoTpteNdFVKwynfO2BcbH8e1hn1gxGH6
	 24BC2g8ebs2Wx/YN4vnLvjPJLvcyvssmdB9Nl6kdn/ildn4Rskyg6HAxRQOB5lZ1f+
	 GD8lyqcspbtZykYlRNptO2aaekminiz9KQcb/VLTiRpRmU73p/jBPKr/HH5FBMPtE5
	 p4P343hnWFyb3JRM1HIZv756pDUiXka4rzBRS/qGGDXP8S1/pqb9KLRke/y3AeJugg
	 5O2aD74b5+KkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930A2CCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111639359.8164.13233442332463508246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39fb121071cd9a88ce4896607c1aa6d9ec6f32b17fadce2512e2a9d98945b01e
Date: Wed, 22 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761116393
