Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7BE1FA3
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbVG/Cmr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C9A8C433C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705224496;
	bh=L45DWNXfioflBNcPEzNB0wgUZQuAO+NSKAxX9eaEse4=;
	h=To:Subject:From:Date:From;
	b=DbVG/CmrgD5mqQV0hPO8dylUMc5e9jq7eXcXgHxp/q2V/3EVzFujr9PklKiiK8nd7
	 5JdDYeYUH/KZliDtes08TZBucZUCxDVGQcGQGdmeAPVWIWTg8nHTRFsqwFZ068364I
	 bKgds7/ThdiL7i5zVD4ZKMFyGmzQSIma0ezuv3htxPuqIDWgsm/ry8w5acJ+jZ8L3t
	 qAtdAuZ/npCFmuhRfUL5cXffpAmROhD5TFiqLVwWJtISNsW7hqD6o4gKAQSjEnh5ks
	 iVHrBLKhs+Xn2aSzCZbzV5UtX0ucYkCrzoQXxpAHnirzlp/ZaWIWaA+G7nGmlNPDTa
	 af1W4wWTkBM0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED37C4707B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170522449636.21509.8833018942336800868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb2a49d0e63bd32477f554c02dfb56555a461d75eccfe1a002105917b6d04b2
Date: Sun, 14 Jan 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705224496
