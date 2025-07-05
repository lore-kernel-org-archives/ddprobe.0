Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340C02356D9
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751756994; cv=none; b=dPH5SUAG+swkBwC5/+lDWda41RKWhvXqOFx1QQuEmzrq3KLg1HdPVyEuGOUg63443OnrRkisxZyGyhBAmI5VCc/h+x0fNUMlsdvmYZcKa/KVqA0gQkAA+vWTg1o8e9h57pshslF72YDOzD/ZpJoo1C074nVIKjDMoYAhJA43fZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751756994; c=relaxed/simple;
	bh=eBf/oqX87FtITtLzaQUjiOH+mIrQTY7B33rzRHPLhOs=;
	h=To:Subject:From:Message-Id:Date; b=bhZJuj9KTmyfjuSNymSFpNoEkF/yTBWzSzMzo14UgtFmiRmQY3Q2X6G9wB9fhTD9Xu6n2UMUvePHHoiUiRMa/EWjKj0uGJ4F4rxaqHOn6OrVjsZtPkcQp6D8iQhfV4wOvP5gORfjv/SN22/+WQ7Zuj+RMwWljETbEyUUqIN3sQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IU3sNB9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IU3sNB9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5388C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751756993;
	bh=eBf/oqX87FtITtLzaQUjiOH+mIrQTY7B33rzRHPLhOs=;
	h=To:Subject:From:Date:From;
	b=IU3sNB9iZYcJDIs9Q47jBRBX1KRqJm5i1ZirBGJFM9uqPDYfC5SQM3rdIiEVTfBNt
	 FAuvwE5IRkuyeAWlDotqhyIzCznL0NTzfgU9SlQ+nNJ4VsqgCzeJtnJApkaRxRbvHD
	 qgIVBwmf1vBvJYc+IXGzEz0q6+6P0953CvpwQHV82PCfW9qSPiQwHPR0F+vP35TaTm
	 B5kJrlpo2ImDzUWngFOQqdXAbuS+rjOEiRHcwi+8XpymRPkCwtJlF81Jxs08693nz+
	 tCLNMGa31bprhLqEhlEeBwmBdiSGKEWQqFaABBgJ2JoxSw6IodtCr30P1lp6rzVksb
	 o5Fz8N+oq8sAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910C5C83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175699357.6391.7689771564960059800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b93c617da57877f18a2016aab2865890ce374d534676b21915b75d6982378d3f
Date: Sat, 05 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751756993
