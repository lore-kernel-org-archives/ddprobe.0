Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7F0625
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 03:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713582623; cv=none; b=fbbbjB9rFE4j9DWY/qmHItkyTZ5aAopD+dGVbtFGOB6AJDivgc7qVntv4bbwrD3EbjJsVMn1ZvUnCVXyY+iXKbX1xtvhSiTlzXG6uTnGygBLMSD8FoEOmkyJJEMoJqQqvpthbhn0DbKYaQLfBCrkN0vrFZ66w0BdMNFqnSKFea0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713582623; c=relaxed/simple;
	bh=V826UrWZQaJWTuypSbFNpMHZo0eb06KMfr+adh/6+kI=;
	h=To:Subject:From:Message-Id:Date; b=S/iEYCSbSmWLBwZSSwtW2kLEVtayaAPboaJMV7DtbDZ1QBNKztlPiEW+75UhGdwxizA7Nkk41TV0lwmMpJs+gNcCsPXv1GPL9OmJnvBHh+E0vkIV5Dx+y1kJoQxR0kzBZV1yJi/yYwkFwpsFLK6dGbHl0eMl+eQhT2tUdJX4cOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UM3wR1gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UM3wR1gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2340C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 03:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713582622;
	bh=V826UrWZQaJWTuypSbFNpMHZo0eb06KMfr+adh/6+kI=;
	h=To:Subject:From:Date:From;
	b=UM3wR1giqho2ILKzeITCzWHfShUMLtasZuZipuYwS4zk0F8G3DnpmR18LXV2P2iEc
	 O8UnVwi5wPUkREUqZphXkwjOWYs8Fsbkme2/fhtwf6XMZv8yFv4dQw85AwcOVFa/SO
	 ZYM0G38cNGRlnESIqHFw2P0oTCAqEgPCUngaDC3VnxT93CSNVoXkMM3KAdzvuCYKnZ
	 VbFa7UwnEopb8wX+Ci2g3qIgl5bLAtH/aDGnmMlQiFdCGTcZyzXthpGe4ffEnlOlNW
	 oAij+6LkAXhFL1Sv+tlR/oU8dWqbD6yKqv5yVKB8iWKrofvXlonTKKHVozy7K0ekIz
	 ccMprCgOd9sEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B92C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 03:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171358262277.19039.9876844029358070210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dece453789dac76e9c2c2c71866cfdc6b27e861fa00a26dd315711867e123dfd
Date: Sat, 20 Apr 2024 03:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713582622
