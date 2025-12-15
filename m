Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3973E329366
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765792974; cv=none; b=dQbYqYjHCRxespBDYEWw9/+2sduh/TXq4pcYIqNDVMFg4ozhkXp1Uqc4MePwibRxCGuToi7we8Tz8G/P3b45tV2QkzB8oh3a6Mh/gRUzZhJAvFaH+ieCiRvxrJDHyJYS/Uec8BwDpBstVQC6p+bMW+NWC2chSzh/rLb8xXip/aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765792974; c=relaxed/simple;
	bh=cjuIPwSH1n+LqWJOI9NNgTqbwWbt1griqNkVaTEqpro=;
	h=To:Subject:From:Message-Id:Date; b=YGS40cyyNyAMtXlTT3iUKYt9IIXVd8wDsC0f45DvqZYRYm5o9fU7Mn7P2AXb7qrL/ABaDq60hQK6JoCTRZ9Vp/mWOQF/0rqggMHMQnckz7iHs/5Mg576mDWfYgIkE+ooCK+cfd5qCZpioSDoA/Sev3mZO0QGHXMBp61bCjV7lvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTCmooxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTCmooxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB539C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765792973;
	bh=cjuIPwSH1n+LqWJOI9NNgTqbwWbt1griqNkVaTEqpro=;
	h=To:Subject:From:Date:From;
	b=FTCmooxSHUU3tKjYKUq+OFbnS1hJu9CIT1TkifqD+2Gm1a/edIdDRrauJRo8dtuYo
	 w21WYPdtapOZktqFfIolohlAiyqcgLQyNd2cAMouGP8pYrcI+KXf89Wx0eyezfA+5l
	 gdBzLMLhfU0pko7Wn57PadqkReUfh9hUBvgqt4s2MM31tz1Ec5X4IazCjdcOBSM0mD
	 DieLuPaNL9Eo36pBxXSlFVnov6ix9kaMFpprh7dc5Qtj8GYLRwQYyFmT82cEPwX5BC
	 9zW4ncW4TXwbxei5iI3Kjqc9mwLUEY6hxMOhj5YjOYeuEppUFgIpxhhVVYoGckQ5w8
	 7HEIEU+uWTD6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99472D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579297359.13629.13932229376475238355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c98da7d7d7e88f23217331f7b6dff8fea16044fa01e7b6b06b59f84ed8b3656
Date: Mon, 15 Dec 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765792973
