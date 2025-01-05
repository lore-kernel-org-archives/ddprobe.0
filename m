Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE97C70802
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736120754; cv=none; b=kQ2cLwkvGZ6FZ70KY8ds7JKkJ054WeBA0QDnDhUbdM9Mry7eoSUeqrZ9Ioy9Nw19HWIt92+T+ta2Cl0tC2uCCf9zjDCD13FuizL9xGoanTGNcOUdntWAwe4Rtm5SiMI+iww5pWTskfmXQAJ2/YlYxgYt+UCVixMlWfPbQlelAEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736120754; c=relaxed/simple;
	bh=bVyuuMKS4a5gSE0FO6T0nIETxc6PTAfGc5JPNmLEm8w=;
	h=To:Subject:From:Message-Id:Date; b=JmyY2s8o0jiGQNMBOV1lCR3vGFjN092LYVXy2epnERDABmLgHFEW36Qr8viKwRejwKrOT/k+13XN3xjpPOQrOhP8LwHU6iDK7ipb2PJJatlj1iaQqxUNiByCCyAUzSWhJkMgyvPfoEEV6o7LaSSf5ss4jVcsKrBvyW5iRowj+2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDOHcUYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDOHcUYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3097AC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736120754;
	bh=bVyuuMKS4a5gSE0FO6T0nIETxc6PTAfGc5JPNmLEm8w=;
	h=To:Subject:From:Date:From;
	b=MDOHcUYOeq2wPIgQrQOB+gQgVHfMuIYB9QOo3NFOzVi6k8j5QWJbtZebb6FhMNoKh
	 Pkyh9x7zA+mrMQWkDU23N8eUaX44C4GN2RFeofX97fOUBndPLOvvi2aILElI4NyLcd
	 aAA8rZgRjN0C0SIbqrqE5KIA8FDpbislUg9jHY/+8okEJ8gDW3PuBdi++yKFpxigXo
	 BAWuY/EA4veMOJFzzYMZveRGNVOFTpOAwMY+ZbGJC5iKUQLCm8oT/xCLAo6ifvFNVV
	 RkICX4t/cKNxxVbd8cMIlGWALiyLq+JgJI5pXnpYjnMjvhvHXbo+JdVW5NMJFE64zI
	 GrEYN2abZI08A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA2D0E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173612075382.15674.10533526190810444760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c29662dedb257959bf3b28a72d8cedd1dead0031400f0f56c9caddcf1db8ec3
Date: Sun, 05 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736120753
