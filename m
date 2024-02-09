Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F267565BCD
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707467897; cv=none; b=cfiCDKVEkCWr6i6gOWfx2OhuLLZB1R0say3CQtgKxjCnPr1RQnEj/1FcboJXRwnCyRhl6unPJ1uvrHHS2SfhFm8AqwT94FMvaV7yWkK1UwmqacLLflnEJ4+QfV95DoaDNgSfTZsYShm6XB4FKUTBLdR9UOirg5NFZXBqFZ38CAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707467897; c=relaxed/simple;
	bh=Mq9IlonZjHlBpIy+G6KlaHChzBJNf5tkEQyguu5nFnA=;
	h=To:Subject:From:Message-Id:Date; b=KGun0kIv4VkEcVbzun42RtGi+4CY6hLwp5WC/ocqB32qL5FGB0OTbvA1h3mTENHCmNVi7S3N5OJrxgQ3tKgxgmR3YQEB9cOxq6NPVlFn2HmlKUnMRhNJsHwI3KIirThkZsICL3EFGS5Xnq9ok/XRXlWEb9w+3MbkuWNuYanU/9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZC/ktVZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZC/ktVZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE78C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707467896;
	bh=Mq9IlonZjHlBpIy+G6KlaHChzBJNf5tkEQyguu5nFnA=;
	h=To:Subject:From:Date:From;
	b=QZC/ktVZ9zg/DcoAYKJV3hEgUu7rEcd2onwbmkctphW2MnqMP/aHfqnvFoqyw3GgA
	 QDojAIrixwSRiArDtq3J+JiiUDVLdbcd76YJiVY7rGjOUbSGiDOhXRDOP9imouMm8u
	 6IzlZuYIGu5iPQNtL7/h/hwwN+8iw74v1NIa3ZwGEWnrlYx7HWz/HS2h3vHN/awrF/
	 qkBmUALqC5TQ5U61xtXR/bMEX+us1K0HcbT41XbO7NAt0HSR17FrrgyN6nVYxjsagJ
	 uR1J1iOqp5s10X31fG9U+c+r10tvdKlS7e9xkljaQ2Rrrdhg9SVbziKRj9qXqm1obZ
	 fiGvO+k2ZWbbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E09C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170746789639.3248.16036588517284864467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb405368ce4b5a174db1b2b0811947fb3520673a9f883c1339b3572da671dae7
Date: Fri, 09 Feb 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707467896
