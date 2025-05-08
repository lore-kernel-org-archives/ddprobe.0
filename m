Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433E5770E2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746680994; cv=none; b=thOy1OJh0meZVY9wISkvaPHAUqwXNOKLWZRmOIBUZKsVzyZX3sBtQux41QbQr2bqIvI50k7cjGNEFj+RhUHLL+DTDezw5ilnw9MikT5OxtnQSWJajDapeveDnPCRElyNQCTdliQSt2QOvyxXg9F6NEolCqkbjIXuqWTdtD/9Vew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746680994; c=relaxed/simple;
	bh=ulwKntJqk3Kv4BU7Zu6kSyc+d7jhOjgW1hQZLisk+8w=;
	h=To:Subject:From:Message-Id:Date; b=CTCeZKpdDxztDUYl6QWb3erjeTkFXVzD/wVtO6ZBp4FBHkZWK4v5c30vDR80IeCmDcIUrVCGpBBoalILW5P2OKYsAPbp2QiVRZyvckP+7l3NGn+uAn05l0wxgiBbVOXdEsMws2DLFbJKX9NgsK6OZYsCv42Zd7GZ84pT/0YKlOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dwb5NjMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dwb5NjMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A843FC4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746680993;
	bh=ulwKntJqk3Kv4BU7Zu6kSyc+d7jhOjgW1hQZLisk+8w=;
	h=To:Subject:From:Date:From;
	b=Dwb5NjMPlAfyWrLLVQ+fJAiNqxBzkCqcnQia5aS16FStiI/p5MtkKNQdbp+mBYDHA
	 8JMx/3IqOS6h3pMe45/LvDSmTWWgGE/HDPmSQTeuZsWXLCD+9giAETZjWo6uDpm1B9
	 UQfh4t12w3prkbMLWX0UpIVUqShgM6bG5Mrnh7TiXrtFgwCdPwgdsTSvzuiIe92SWl
	 LB223doTy0Ri6QSfmEMwBbardyMcvX1SSC6kCfVXnV+PItJIiv3LvzmuXWGrRGzZ8B
	 kHkB1B66OcwDwJoJTCa7HAU6NMpppfTG/dAQTJH9m5jnWv/3trpqAwYjJNeborjHXK
	 7Xomn8BTvXzFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CA6C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668099358.22548.11619178650623654953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb2d49070a53c746d67b0365b83511eb09da92a7dba2b1f84673a1d591b4ceb
Date: Thu, 08 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746680993
