Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A42B27702
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728708954; cv=none; b=oaD8c9gMoMFzDto2wGJUNG7G/CITxWydJLyZS+Rj0wH2xFW8um8c9137is5Vv+Q3fYU8NKRV4BUjgYlyWJJaaJMUWO+rcC8BDv2+C2SiF7/QFRt6KUvEMuzx/eYWeHlagG2vP1XHeXInvE0UHSHZ/sDz2Kf7+pYxbYbQ3mWzlRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728708954; c=relaxed/simple;
	bh=ZSGlFq6fz75Qn8LbmYQXfxN5uZ/SUnKlzzWcoHtTDgg=;
	h=To:Subject:From:Message-Id:Date; b=H6wxSXAbrU7RilogHsxN7whXn5nq6WLPiozoS0y4AZ37oE9d0DJgblmVRyVz+lc/UInFxBuRFLf81hv8ljoT+3RdG6QZ8nYUmgt5lnVUZEYAoX6G/c3if5jGxs0bHSYeRToDjHOZCMwlNQ1JFPcKhUMfSyqWv10UaaM0FHtg3aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K90meWkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K90meWkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3187C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728708953;
	bh=ZSGlFq6fz75Qn8LbmYQXfxN5uZ/SUnKlzzWcoHtTDgg=;
	h=To:Subject:From:Date:From;
	b=K90meWkRnnjQIv7YUsUtplzbpQy8jAnHGwgrLmN/Fn4gnVkjHOSagOM9hl4TLID65
	 B6dUXE4wFoNAfcahhosHe+pEII2yJlDxslwMzDxmjMAQcxl86BBGZ7WBAI1R+qIR6z
	 JGZWW0xEFwXxjFXn3DAyjafhzoldNhy6rTrsU4DvSC4Av7+LUqv2Fah2pgVtI1LtGd
	 d93JAFHi01HSd5C3WWhYcSyzBoypneyhhBaUZpCEe3Y50YqWFi8upZ/Us/VEQhQ1jW
	 kRsPjdfWMcYg36fFC1JvFm394Iq6NYIaKgz3DA58RQog9YoCeOpfzgbWs29JCa4NJL
	 pHrkOrBfS4kGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C92D1A431
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172870895364.14641.1901105705601854766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6482bc417386b69508037d51a909e83649934e4efdb6e828e93685256da41b7c
Date: Sat, 12 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728708953
