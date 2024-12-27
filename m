Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E26139579
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735331154; cv=none; b=Bj23QeEFurxGdvyUNx9qNlV8ZCmZsgU176dtuYX0kiwdBgLL4ZXUJu6uHJtyV4H4TM8S/f81i6o7O52kGfrUGMdeCVCvbS1ByIF/l6GdwNiKJYt6URgZiFiXHaC2ETKmrOvWekd4a8MrmiwoHgqZHIyyxwexVM2yYaPGX4d+HqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735331154; c=relaxed/simple;
	bh=qZellIJPX9MvbF92N7GrLNXOoSdNkwlDcs7g91rkO8k=;
	h=To:Subject:From:Message-Id:Date; b=b0/3MuC7WUgQi6fD3AOuMQYvQfHr//dSBLxD+Ogc1p8bcX23cAyIbQYnP61UYEly4ydq18ZSvY8RGQ7NQTS4Up4JnRQ6FdaqO4Un2ciFYGgdQkRZ2hCkdwc7cvYByLboJoiZoqKgbsDUJzybJGg6qla6gaQzTHx+dGRCV4HfRA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sqi1oBcO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sqi1oBcO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD62CC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735331153;
	bh=qZellIJPX9MvbF92N7GrLNXOoSdNkwlDcs7g91rkO8k=;
	h=To:Subject:From:Date:From;
	b=Sqi1oBcOwhs4Y+EV8adWAQZgNgtL9dcpsQZG90VNdneEFb4E6IaTwkYyJkyiiu003
	 jFYcGSl2nkaVa8WjGlZKM/1UqulFBNSWyC9Vf7kb/EssBFtAX/EwpGc3IC9y0jjhrH
	 HsgWJQIoFTS4M7yYnnQBo96N8QgbeH787UkIAEbUIkdqYGzJ6WX9hcxfyLi7rECL1b
	 K2cRGGa1Zi35gF2BlEPjSDeB1oP3hc8wxswhKlVEbZWLy7PORpKXS3I+AB3Ql1TEXs
	 oSbIlCBukD5uQxD/bN+0+QFZ5G0uqEKLVkC5cSG9E/F3bKuCnUVj8DAljJ6GwcnzEs
	 Ia9ITSO9RdqRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A74E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173533115359.849.10908715912017442376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922f364f1b441190ac33d22c813bd6bf299e2620d7358f55eca69ded27664510
Date: Fri, 27 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735331153
