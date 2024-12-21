Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5B1154444
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734822954; cv=none; b=CynCKz0QnZBn6X5a3/Pyh/SIwuYMVSazw2ax0xsrKuOaM8k4u+FeFb/i59qzZh/23HF2kJqDC8th7AjNbGsWEBfuQJg4hc0E/mfeX/iJaOvwH/pMTB7h+0Dh26KMtC7CJVoNPCWtAR2fhnG5YffAdvhEX9rgiVmq+3r5CPGhADw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734822954; c=relaxed/simple;
	bh=QlE3ZAFDgASU+ZjM6JYfLsHO1ORcQdPM1MqQ9PSi/I4=;
	h=To:Subject:From:Message-Id:Date; b=Iz0YqIR+e2cgU9iiVyw0yeEgMwu1dZKUVBaodXAr9UsZdMt4+F0v0xN+LmxvG/wTlyozKnbyxQh9nc7Ge1djCuWIGkiXvMWeonwtOzLHUWyG0IPmN3wMEFn+f8KdhNk0KZgptIAiczsxGIqLOKPIe0n9P0k4pM+kqbF9irDVWPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h756dsZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h756dsZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1E7C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734822953;
	bh=QlE3ZAFDgASU+ZjM6JYfLsHO1ORcQdPM1MqQ9PSi/I4=;
	h=To:Subject:From:Date:From;
	b=h756dsZAa1WZcS3mXi6ptpYLNtD3wyLshabAs7GEZNANB8Ea/RxeIy2kfYlzhn3FZ
	 aTZ1t2+UofaU/S8/oP39oQhU/fRRX2tPA6xKTE9aldmMJsAAP9T/CRvZCy0KnLSinB
	 LJ3Fsf46k9AKmKF38dqjaEiPesT6CpUSD/KVmR6iS/NgLXyj7EulzJ2L7SSXC+/80j
	 VU4edNq0lmFlSApXiFxBbD7Od340SMlw+uSi8oR43+GMTYKBtFvZFJs7FAzh6tNXl8
	 uuhnkJT/CDVhhLkssUkIlUiPhlcz7Cx2OJivCruzxcBAIp85IVC5PZ81ojwcQXQGLD
	 tERRheBkqLV2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97093E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173482295359.24426.5563903864403385098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ead05dff5e9845396bc3fc1c410c46e92a28a35524889e3eee888ca1542e09
Date: Sat, 21 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734822953
