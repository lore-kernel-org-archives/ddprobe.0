Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE0A10FD
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746382794; cv=none; b=iOjXbdK9a+JmrlpcW6nAsMSc7Afuz5+Cbsiz0Wn8PsuMSBDuJ6OuWVwx5O9uc8iEDr2oNMl/MaQ2ezob4cipVaAHUyrQu87MAWRf7ucGQ3AuwcfVJCYCqmBZ+ltl8Srz+k4ynen2hUDg+vfwl1ir7HGzNtf0BEZdFCtNltluiGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746382794; c=relaxed/simple;
	bh=vx9cc0kNwlb75akGx/XWUGjDPkHRN5Eg61RbyNK6Hmk=;
	h=To:Subject:From:Message-Id:Date; b=AqpPEFLUQSY2gLGpyNmSBNs+UTJuoD4fASdqb8WBvIBoyRj+BnJdEDdxZNx8B/qBZESDHDN0+aWLW6BQ7Vrsl5hBc+fphSFnvbT2AEyml+a4k0EPyqLKmKvNKpqqIsE4NsdCG+jraNLFwy2jtgwpGepI5wL+rGmbY1hNO33uVhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efOjtplU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efOjtplU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F72C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746382793;
	bh=vx9cc0kNwlb75akGx/XWUGjDPkHRN5Eg61RbyNK6Hmk=;
	h=To:Subject:From:Date:From;
	b=efOjtplUHZye9rQsfTBj3yqO4uG5gQpkUbcpK97p5ohb8qELHqJw+AJjWiei9nBSL
	 BEzkGyEidJZ6bhIeTIkqHbCNyUE4RrR/iT7jPy9yyxaHIpMJEKIarjV7BLCDMMmwKR
	 /BvZ9DERpD6XSKQC7sqAU9jyXBBfACcHhZIBzk1PBzRwC+sy8adoswQbEhTzbCUCVb
	 NPCTAZjgJ4WgKZwN7fvudzhuYmYrNrsxNjUAdLz8hJJMwQ+k7RyG18X4/G3+oJt4Sj
	 4EKz+xFDpeNJ0zvV1AWDaXtJRRYawKsMJ9eLgfiU6AOesC0NJPgWR95lTKBBgunItT
	 QPvFZXS5qgsJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9227CC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638279358.30264.3961364525689629466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c20b6d6029d5ae7e291820fed8dd419a73a5cbe496ebe338ce9887c34e97d6
Date: Sun, 04 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746382793
