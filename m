Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556971CB12F
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724330754; cv=none; b=WlsKfHiylWGHgZYLg2uliTYZvbY/tblSlUb6qsXqTq6s85PZluwMeh+4nhKLIh/xTmz6P8eEYu3IQTJceVIQXO7+d6nU2/jWD1x7TOK1OJd32FokriMoO1Q6zB4ZhXl6i6XrNNzZ26fw4tHeeJs0zEQqz54oBZPELqVFy3jAqHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724330754; c=relaxed/simple;
	bh=ZbQC2AWTBY2Xdc0dNS878ASt7MhpMEwHWVdDkLO80zs=;
	h=To:Subject:From:Message-Id:Date; b=USbwVa3Qa+ploJ/17NF8fL+Hopryf80W9SjcJ5gNgzGJyLr5qQ/YzdKxEMIVhkBFVvv/suchvHYWRHcb431oJRsy/7pJIp7qiQnoxOoELSNrx2+xMpTm56hzUHflAtm7LEMIWL7v8JEbcKBdRYpBx3RgzkNWvNzNaKkaNxuK+JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXh/BMX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXh/BMX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD15FC4AF49
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724330753;
	bh=ZbQC2AWTBY2Xdc0dNS878ASt7MhpMEwHWVdDkLO80zs=;
	h=To:Subject:From:Date:From;
	b=BXh/BMX2MO9JrjxHX8tGWrx3xDQuneVXJTqXHLX+UVFJttEH/NmX/HDCFgZe5sP6T
	 g4+x5M/CRqWaD5lAymTX+dhgedlkhpR04MovKUscf/lOgAuXKbYp0mKWKlt73sFvGu
	 cJvKydi86ih5JvjmODrLKNR6vYfoHPT6Blh0JzRvLXtX4FZVqg5iR/bw6WcAmwbdXz
	 /ZKJF70jR8Y0E40A6WP52j6AusGDL/5ecqWyyPSWo+dm6UtJdP3bjZWv9ISQEYCuEo
	 MBZ3BzF5M1zWHAVg8Be62RLc16dal0kgT1ggwpQ7pPpYT7C8l2lvS68DE5rHIjU3ZZ
	 I7+nWbhTVdaow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEC8C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172433075363.27533.17463453049077921325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bab9ddf940964a221efe8bb17ee74e8e40a4bc451f556c35bf745136116c52a
Date: Thu, 22 Aug 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724330753
