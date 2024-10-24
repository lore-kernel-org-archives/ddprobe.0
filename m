Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5DF218D6A
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729810554; cv=none; b=pMuMfXlQLap9PffHspcdU7mq7dBaTTCqo7coukGClI12lZOwCYgIJ/JaFTLj5ssO1cpjqNSYQwNbdDviZ1GParRdQtwyhYiXj5xm5fl9vDY30M5uLItCPDyzng2UVlE+p9oCHaMkXvM+R7PdtCK36mUQRW2uk9XQ+f+am6ymgyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729810554; c=relaxed/simple;
	bh=u+LH5Ah2C2LqyUdMqzWcv4rNE5PFy1kGFdvFUH7xkgk=;
	h=To:Subject:From:Message-Id:Date; b=ogqEixZ6zsE/+dKbmS0Y7tMrMRxtanV8vCtWFQ+PLl6M24MFc1FKETJnfCtEEdOzssRE0grh4/4NjfVWDTQz1qWdz9txYJrfThagOU1zJbzX24jS6+6z3J/BnZz/UBTVfDdvZkHHSg92N7HLLhGWNnU4s9kAHD6ReksQjVN+HBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gd2MCTTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gd2MCTTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97C7C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729810553;
	bh=u+LH5Ah2C2LqyUdMqzWcv4rNE5PFy1kGFdvFUH7xkgk=;
	h=To:Subject:From:Date:From;
	b=Gd2MCTTqJKGEkYYM3h7tAiq2JoHMvBjyOlqBAQsb41HA7PGYXXyUyeI0cx/QVae/b
	 Li0mnZK3Kn5AZV79PDFWTfd9APxrhG5NXDlyihTydzDwcToafgbvr1gEhLVYfjO9rv
	 JN7DYgu8QvqYtW+Q80sdVYqwoG9jZItkyYwasikgayiM1NpmQhO+x27Ig16LLEfbSD
	 /hJR1v7ZXunmGcx4+tPNjP3g/cqXxjjAykja9ZEpBv+pf/Uj4aHjta0LV2NaDc4EWv
	 04N/V1G52eZOUp4L8tAl3GzpLxyXZStnt08c5k/sGgp5eFrIk9Djp6riOApDzOxJx1
	 SRKfZvds7CS9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD3BD1038E
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172981055362.6497.16504949585316692205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0b3b592cd2541ebef944de0f9578968e125463b0014cd0de42d0d3df0686518
Date: Thu, 24 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729810553
