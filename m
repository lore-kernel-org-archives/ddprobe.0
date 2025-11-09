Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AEF4204E
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762662594; cv=none; b=VOkQzT5dW4UP7hNRRRs0uxyFjk7B/CEAo+zGW3oXig/O70qrjyqAW9nhSWey+RhErTxYvbwazjSejI9ZRFdZnoCcKRas2uOj/1nYg15pDQ/9iMPsrZoVLDhc7pwuZU8ADHyxq8dVLWurehf5Iqhihfw8F7l8fxYhaWq8Gay6qak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762662594; c=relaxed/simple;
	bh=IEa6FmtGeP1bht6JIHfgO1EgM7elgaOfBvFlBcUtZrg=;
	h=To:Subject:From:Message-Id:Date; b=brAa54jf6r7N7MQuNxOCOUE4MyKlnXB8kAX/Vk3N8quiE/fqznSncYpOQcDrQWLv+yGjh+uA8MtSyitylPjsMfsHJtrq1sSiSc7K/8yCFZwoOAqFXgw9hhsdYugS3AifQXrvc9lSTwnuQxywYCG1U7sjY/XtyDymJtXD/KYrDe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dycx5oqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dycx5oqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE03C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762662593;
	bh=IEa6FmtGeP1bht6JIHfgO1EgM7elgaOfBvFlBcUtZrg=;
	h=To:Subject:From:Date:From;
	b=dycx5oqFQH2byzRK3phP3zUHAaTk8MBCrkP1X3TFdxowfAXPDcb5sss0CtF3+2e6q
	 +01W5JND7PnTzBTvDiR5DzUaADXF/3wBjy1bnQbYSAJlZUHfuPJIYET9oK0o6c67ju
	 2DYoMZeARTBmiptGb7XLEKLdcu7SISWx8Flw1cKyKce3+zgTnpG9XvqeqXOjjKWkq8
	 Dl+6I9lGUd2zQCBudv2PkRBWWV1+r0w1OeuW++5rd6T5R1h+fKeqBe9oTZMIrp8qL+
	 3tbe8EsKuL5wvZGpRweGN0X3xv5OFUE4UMBG6LRrMm+OQYD+57YQWDgGU78CjHG2vM
	 M1QRZmiUcq/8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9CCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266259358.23817.2742454818671346173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81dbab1dd9488dfaf06a06faafd77cc49a50eee26062441885200d00ac4c72f7
Date: Sun, 09 Nov 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762662593
