Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A061799F
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753785594; cv=none; b=FAQBs8y5lGsElal6LvV5U5kVY93/2kV4qVXdFjsC5W/BC21SZLdO4VMHdzyDhGSyz5O3hUPr9goRLrVQEZEXTTf9XwmBdvqk5iI5NKHmgrtuYUr/Ua8PbVRzy557v3Zz4GGOTMPaXIiU0jmMVdQ0EKkoL+MOdVjqvqpO8z/SSIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753785594; c=relaxed/simple;
	bh=IYNcYawy43lgexe+ZVAVqkrIbhz5VvtW/cscC/dPjh0=;
	h=To:Subject:From:Message-Id:Date; b=XOiaThzIrOEUqp2ga0cCpzqGiTvxxLTZ/oum/k6WbAl2cgGjWRp0ej1wYh5qh+/e04pvcXOmHJB7VWYyHPQKsfgCdEMtVeqmU2YGDiaNESBQBqquTYpRCIrtGqxYIf6rvIOp+y8CpGZodwX0z5SfMQLwiF3xniwIEGJ4OSOXAQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrJ8LVHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrJ8LVHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09A8C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753785593;
	bh=IYNcYawy43lgexe+ZVAVqkrIbhz5VvtW/cscC/dPjh0=;
	h=To:Subject:From:Date:From;
	b=JrJ8LVHVz9MEeKv+aEzh1Q5PxNDwpPrxmyIMFNdyc9MfNcxWfMQaqCxEwQHiCu/27
	 0asOxK3QxBQyqkoORYje9AD3dK6nd31qKZPT4nB+lMqjXzq2dI9SO6WyfhRbLhdzgY
	 dcn8Q6PvXxIcI5CXyZl6GZg4sXOQ2cf2/7VHiRDjkc3PXhfQqleKYPaOcuPFI0brBp
	 1oQXhmZKhxoCS4eG3r6/Ca3YH11gbo7UN4aaPUDdeR6knHO+zZ2CnDW9QEzMz+XMvk
	 nXObzTji+Ct/X3AkgrjDae8MP/x6guEumvUn1569lpZbgySkAMXTF01jWCj+/t0yd2
	 nSwWf0y4ceY/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F455C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378559357.32570.14114672082806078284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb78ffb373d060bb43d8bc07c83b68727281fee9d97ca4343bf59053e7839680
Date: Tue, 29 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753785593
