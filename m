Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55023223DDD
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755831594; cv=none; b=Lq0tkcQfmVerGgt5LmIWZPo67+cgKn+i2wkMf2Qn6oxWhqhB7pwR5n1AF72OYCS5q7f8m/XmE4o4S4ArKFPZWrQXJMYSfsLzGax+Vg15FN6mUz8pZofcTMKpRmFlHeNGkzd/FyZaWq6+vuKRX7yA8459O9eyFP8pkJ3fmZ/6UbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755831594; c=relaxed/simple;
	bh=kqARm38v6rFUXMRecqBeVZom3XBkIrfUwAFy/an4eCY=;
	h=To:Subject:From:Message-Id:Date; b=bzduafPcLuXTHKPApLmLK0mw+UG09c/pSkXIyvlEqGNlI9YW7I4aDbrKGmqzwy0L9+8Q/TYA2iR7C6/i6uZCYWodJkFmPjW822QUvxTIFoQY8LaLH5YotpDQ4bNROXKIpOlCtP2chwkrv6RkNSdrt1OgGVVOy87bwDkii0MU49s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDUNSRHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDUNSRHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7281C113CF
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755831593;
	bh=kqARm38v6rFUXMRecqBeVZom3XBkIrfUwAFy/an4eCY=;
	h=To:Subject:From:Date:From;
	b=JDUNSRHxPJsjR9jBxVgjJvD8kHpxwG6/I5Z4eSsCeGQT9HdRrVYaOz70sRhsqnHi4
	 am2abFwj3OEvBUcOBHgLdJMQuT4tqXJM0CYMbkJjod0rnCAgQbK8g8LTKnxZAFo1wv
	 GVEfMgHoKN6ErJYZI7wuwda0vIM7ii1xIRlDhvxVvugA6q3HcCGnZTaOdlPTZK8+Ml
	 CLglyN43R+MFV7c8MJ7aVvWBw4E/maC7CGDMbAVPFwd7lGrKomtMPw0PHAMBA5lkvg
	 PbKgfgeJGPEeNcV7fE/AatPEoOEn6kzrvM065IGdybWU/VEThdPwRINbClHFtMGt8q
	 KETh9BiQbE97Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C9CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583159360.22903.7827189510141247254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b68e2580569038ba8776ed1e1ecadad663fd2ed7620a738bb05d977cf06979
Date: Fri, 22 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755831593
