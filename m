Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D844A1A0BF3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753904393; cv=none; b=p24I1VveEBYp8b3TWs8NjjELy+Wq1OklZ5Owk75jhxjprBBQUNEXHtaEMSwFKfiqIFWZb31xKylnKPRdl6QSC5CMNOJBtRqKGYTmVU5qbAJmxDGehYerMDFtnfRCWlewMlqYkSCdoig0rFaVna5jXrrwCJsAozyshhrj1LU4WUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753904393; c=relaxed/simple;
	bh=rf6jLKwqMN48W6LWHDq8bDfWKyKnD41eYFAwF45TFME=;
	h=To:Subject:From:Message-Id:Date; b=f4n9LHjyp3YI3RLNlv8Pw0OEH6zpc1qDpP/O1f05m1BoJriqLezMUcgc7qepoixleWrCQrpFwd1GM22E1LthgPg+bwi30prUW+9bd1w5bvaGm1FmgFpJ581yIJsX39UnFgCVnOUUobN1H9Qui9132U1iPIVVs0e+PMTWaB8PbEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hl9lxYTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hl9lxYTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3464C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753904393;
	bh=rf6jLKwqMN48W6LWHDq8bDfWKyKnD41eYFAwF45TFME=;
	h=To:Subject:From:Date:From;
	b=Hl9lxYTETxM2hfXm+Q9/h83GXhR3OSSGkubUI2dTq1t3mULUexzyR9nmr4T85wCQP
	 l6Uyg4J+c7j1pzH9w2WNu8VJN2qtoyuQpUF7RjVbg0qxXOqATo2c1fhNtZ78wt1THB
	 Iby27fPFtVXAOCxJ8eE1XaMLwMeqYRcdb68fqemyjD0oje3a3cKOP0M/fp/+6zEufW
	 PBxKjwA3BpMZuNgp/YAZmoDdjoieyhCWCQVX1Dkuj31XcZKMBAER+6PhK0cPqb38xY
	 7q9KMg8xSWhC1vGkVMRYJ5EcMGdfc9tFc5LU9PlqW3OTtVptNkyhvD182Q2MM4moxK
	 5QvvMVBBiVacg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE1C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390439358.21533.16994269774031120492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e007bdaf4928660f378878da69a9afa185a0bef370886bb80e0d56bc834bda
Date: Wed, 30 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753904393
