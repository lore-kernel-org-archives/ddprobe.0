Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEC829CE5
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726802754; cv=none; b=YyWpuzI51wMkuZR6yV9mAd3g1hTqG0ZNNzZ8zCDEQqq8rs4Cxj4Vtmn3aGeTZHZbFrQTp46KvbpX/S/qtV1O1ipE7c0zv09b10rRN6mFDJSV7VmCYN4iRjgCPuCSIHbSnv9f2jlEZVhAh7v14GPHxYdSRm1mvvUBYCIHJ5yxH+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726802754; c=relaxed/simple;
	bh=I7Pd+hmw2ZLo4DTc6eqKsErIKIdHue8CEQ+GsvSOUPo=;
	h=To:Subject:From:Message-Id:Date; b=JOnT3D6HxhdoiwgZgX38SRjc27zf4/F4eio4KCy3M9EAhJtzShqYbFqJk2/T5wR5b4vVcfwgD1hrjYSfZMohgj4PcmDaTAAp8ouaxr+MM0iryyeEiYea1dRkbbM2RwbAiGsNbjWQL/B0bJ1C8+q5gIuEnDB5vAl/h4N8LtMt6pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGk8DDOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGk8DDOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCC7C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726802753;
	bh=I7Pd+hmw2ZLo4DTc6eqKsErIKIdHue8CEQ+GsvSOUPo=;
	h=To:Subject:From:Date:From;
	b=NGk8DDOZWOWWeQvtvpxVXoFkHjdp1/30YZeOMJb3CAsXa5Qhv8sSCKXWHM85kBzNV
	 Mk5yR6Eo4GES+mENHLXrqtnyo68nwlrPTz04Q+fYkKffcHz2wWNFSHsgAmNeoaTnJd
	 /FNguOjoSg+4jm28lY5jykaUiAuS590+qnrcbwPiX8wZVnipKF2EwEfX10GlTa2IRd
	 aO20H2T9rLzKbUqAbSrEJZhGS6wS0sx2rwTnNXRjrtEm+b/cTrfGLptAtmBbjX4cED
	 Ap0LKRkemzRUwbfeWcq+KoDI6BiHeWoRNF9MUP3iVXrq2/OjNPyPp0XA7FNwL6cp5Y
	 1Gq3ozqZHBF4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B3ECF58C0
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680275359.10413.717075985325884551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf165885a3662cc86d03cce1eb61ecca8bce9676dade2b193dd1dcf97455b286
Date: Fri, 20 Sep 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726802753
