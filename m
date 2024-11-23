Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CA533987
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732394154; cv=none; b=JIsksxIXGEm310RgzFEUJUCGLxm/1xNhWlltygvHHsYx/nn/+HvzZW0ZL+s/QHUWsK0SqGfbA5Ob0/+aMghWDM4j4Kl0BLj1Wu9yLWxkKHCXF7SD3vEiDQ2by4oqpULsPgvdo7P1eMRY8f0WAc/HzU13zCxraVghTk3l6Eh9UN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732394154; c=relaxed/simple;
	bh=rXMPJkH5EQi7/OBk0k2XTHbdhvsgIHU9AOyFyA7FO3Y=;
	h=To:Subject:From:Message-Id:Date; b=LtLB+5j5hX54jWARXt7RQ8NMAVMXUTcUbcap7xfqdQEY6hxWmPazqLLVqkzsklLUK0Vr8LVjQUSmEbfk3Udr/1gg73K4ZF5OnONpQ6Eckazg7Lfw+5n1eryZCOe3zDokVuYyP5wUhkMJe16rBgLlJ18JHrHvyzE6pkuIFs/iX4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZYkixo9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZYkixo9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A501BC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732394153;
	bh=rXMPJkH5EQi7/OBk0k2XTHbdhvsgIHU9AOyFyA7FO3Y=;
	h=To:Subject:From:Date:From;
	b=pZYkixo9Eh4lntMj3HZHW4T0oHBctgBUJiXhlbGQAvPj84ast51GPrFQAyiUxAQym
	 4KN8qbcQT5qPu/ZyzxXFP7yxCQNVMRO7zyiZnmII5aFbqRoKYmB6aJi3IRG4pNmHKF
	 jZl9LqBitI6DqcVOpC2ubdr1owmDVA8797/cvGpZWs1WBskCmx5+fEPUsZTI14+vIp
	 leTeGS3jS3CJ928y6boVvvTTOiBhbEZ6Mamo8ADsKSntug8g9QGYmMUH12SySW0QQo
	 m2Ylhbzyr1Xd1xx4rBfcLWCDYltLqdqAma4kHRoQnQOlMwIs00fvlo+CiFuuytBWGZ
	 htmmJay9EvvHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97871E66880
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173239415361.32734.2408010473183782726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c771ddd068154245f539847e5bd2bd857d35e521421d350b207e9d40662cee7c
Date: Sat, 23 Nov 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732394153
