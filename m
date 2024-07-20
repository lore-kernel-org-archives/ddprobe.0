Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4754E37169
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721488554; cv=none; b=Mvg6CiRdZTIAGptAV/7kyQXeZY4sk/31R2rNRpmRpSOO4mujX48a+r0N8XteBpysVckgJYIs0YOL3AnfV2PfCr0B4/5XTKafrd4IlS5KMs95dHZqfmpquPouVt4WDGZeZD4fwLZh+NnXW/aHN82IYrPUkWuB6F4zhWb0q35VSH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721488554; c=relaxed/simple;
	bh=nuj6cq93qNwphM9rZvEZrBjRefIS2jIcfNO9RmI57Og=;
	h=To:Subject:From:Message-Id:Date; b=Da6/SPocHr8eNEnnKinQsRN3VZkBu9m5aICuzA6AwvThJ9Y3GKPKEwjppW+lMtXVUhTNT9wCsYyhLJohR4guZfxmXO6920jLFVOJWVDJGLxUT+X6YM2bfma+1Wk3UJoZ5yZamRonmPqHii70vl8Ntzbq6xQ1AUxYZt7KGpfZULY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goMxWo5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goMxWo5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7DBC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721488553;
	bh=nuj6cq93qNwphM9rZvEZrBjRefIS2jIcfNO9RmI57Og=;
	h=To:Subject:From:Date:From;
	b=goMxWo5GdcF5mznxDEj8fAeh7cXKOfJUJHANIC6MWEg2NX9FCUdl/KU+PHug5m8dP
	 zFuR7SRo8pDw7tRKRxTMjwfaYGJ1/PRVUwqJ3WmiKYaaFuL3D0ADScwn/HbV4DM8ua
	 WY6zgF1lYeEbG8Zl0c5iSZYeAu9LKBpyQxtlGMD3tCx0MQzUaJ43q/p5G82PFsktZf
	 nmd0FCYpIuz4IHMhGDxWELIURrDycLieC41wUjaYsH3NafCQ2w9rGVfM0Xi4DGNssE
	 X0pBzrlSH4j3KlKEjt2Aog0o6GE8StS8kBYuuK9SORJum1+Kq3EPAhqDFW+OQ9A95G
	 Oi8MPoFSxhYeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F18C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172148855368.29963.3383281734244730543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3727b64a3399644aa83a78f085372f43f9f2d7da32f4fc4eeee61b45609d0400
Date: Sat, 20 Jul 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721488553
