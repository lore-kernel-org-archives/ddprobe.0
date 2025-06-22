Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CE5440C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750578594; cv=none; b=P2qpyr3GycU+VgWcuU36ethIx/7DoLzaWruDBBr08j/T0keZtSBiA9StYG+10js8LKTCWnFDvHi3roLwBOv/an17z61Yr9tKB1GcmNjYRj+yfddUCiOTSUxUHmqyns7abtff5uDrZ8MApeqcFJHkM+0WgLgf96lRJaGvXaidHXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750578594; c=relaxed/simple;
	bh=z+LYrWBHtGOXgn6Nj3oDkZdSUnSM2FISJJtrLMgJaxc=;
	h=To:Subject:From:Message-Id:Date; b=tSZKfqyS9rAaW7VTysW9tRYE46TFidMsHnjcgkHlG6t+dmMyAIRS1xdAeF+9qPxPLV+ILSCgyH8Q47lUdgIxRROQGswKQYhX4HRiUsMCjP+JSU+8Jdq9lJYNMgo7GbnKbJgI7uZcCobrgBcmkWpXdyEt4rmhiOh5zyWWBjwKsGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmBwp9un; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmBwp9un"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CFBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750578593;
	bh=z+LYrWBHtGOXgn6Nj3oDkZdSUnSM2FISJJtrLMgJaxc=;
	h=To:Subject:From:Date:From;
	b=jmBwp9unvkMExFhrJSVRXcJEbalUYdHdo6EN2fFndTv1morHbcaSqLNdXIeclVUYy
	 Mu/mzidYRpaVJqNnqR01ymjyEYmbONJT2Eg2NYYIy5qJDsjkwBD2bgvBCsBHZYqnSO
	 EDYng1HFrog7LeTzA1sOzURE7Xr+unYRLfWcbTOvLXuR4ZY2bPaP80CHBRqGy+s6DI
	 5jwEjBRXiYbCZyqgunHggLqxSYfcAl7hX948rJDn9rHcKBmJM8haUqudlnXzEuFn8d
	 egMdXOId1h3pKBsPxnezNQ0yDrU/UuYyHrVtGaoRWBM+yPPDICgEoHIPm5uAB6m8wW
	 5EYPapcr3JrJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9246BC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057859357.17362.8430845092487658281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2102a6369263ec38e80492603a784716bba22ccfa1538862aa2e1221b6d72087
Date: Sun, 22 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750578593
