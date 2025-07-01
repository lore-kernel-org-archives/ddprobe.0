Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217A026A0E0
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751396994; cv=none; b=kCdyp2jqLY+YOWdXT3l3FCdT6g+dw8rwivtx4JzAYzxKRVrqT7KSPyepymBdMoymM2YDPcQh8Ujr7KjsKRmt2KNAIcdo4t9fR/5jabl7l3YxWteiAlg2Veg/CuY5BCz7I3eAirjlvy5XxUi/d4QossyJmamAlYGcMhQT3D0jcgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751396994; c=relaxed/simple;
	bh=g/oW4Cn5WjmrFAnu7VCngQ+qjxvD4U9Oj8G/jWQ8134=;
	h=To:Subject:From:Message-Id:Date; b=LbCDGAqf/o+e6eoADO6YBIohkYZVgukQr1+a5AKilAaTJVm3dm+Z/BIq6dTMnoYrwz32rddBt3mR3aNO1ipfEbV/NjWf5QnXh/USCOXleLWgdp7DQB9z6ENh6oZ8YuqosmRZ9yIR0gNo6RzcxDudhWUNkrSbNlwuOFw0kyHLFYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wsl5qCi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wsl5qCi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD1BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751396993;
	bh=g/oW4Cn5WjmrFAnu7VCngQ+qjxvD4U9Oj8G/jWQ8134=;
	h=To:Subject:From:Date:From;
	b=Wsl5qCi/kbZPofEVbrc/Tu1o0QcxUtJb+c6/Hjst9mfRzPT60mAGHyxd25TKJD7hq
	 67/8zOEpjwzBpYvPcQ5RBa3Cv57BjszUkteu971mgjDSsRbYclmSo0v4fP4+PgAmXp
	 sr4PkkAO3oWhdkW62ttwuUVq2cHVH976TaQfmviGymaUx7U3D6jAn+JGr/Guuo+sbh
	 uH9keVgeLx1Uka9NBnVaXoi6aemDZtUD5+bFNYmkPWugmy/L9k758Mx5ItK/HawL+K
	 XpfFLpNUlrbR12djq/6wzleE990ndrghfDMzuD1Y2urkRx832QoioIB3esssgkY1Tx
	 ZUnzZBlLNjfVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E26AC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139699357.29297.17582427888093378091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3ab865a372ce9238202894ed3137d2cf2facfe34d94200f402ba2097903396
Date: Tue, 01 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751396993
