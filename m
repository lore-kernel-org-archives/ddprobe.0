Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476501A6813
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783384114; cv=none; b=i6jXGOnFhZfM+ELqOrF0o6OBgq8Hed8SiWPrxVJUC+4SECH4WMMKnYKyplB1K1BigTwW75HiGnmbiFq696WCFi4KmTrq/MQdPgsVCqJUqIdmkLyI0DIdxyBHEba8vYGnTf39b1EVxGyDYEBaiUS/phiFBijWzZgzOPCUdQD6pf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783384114; c=relaxed/simple;
	bh=q+OjCATpDs+Aio7aBxUCXHEfQwwLdJ6erIWW45wZE2E=;
	h=To:Subject:From:Message-Id:Date; b=IqZ7g9f7FNxVaiQWl027h0nLT/aLQM9mZVjH/yg5rlQWoREgTtabXUfXToAQ1q3vPJOOYI9EiQzXn7qy/vw+MAZUL+1B8MHMTqGJBvmxlajMRi+NaCP3tKlMIhzYEQT38vAW17D+U1Xn4lTbEYt0MjzeQ/kU85Gw04Bw0l/2u/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTAgJMG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTAgJMG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EC3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783384113;
	bh=q+OjCATpDs+Aio7aBxUCXHEfQwwLdJ6erIWW45wZE2E=;
	h=To:Subject:From:Date:From;
	b=NTAgJMG6DPBOPTfVAotFfMgxEY3uWO68KmkD0mj6WcRLD07Zn25UCaUG9hFWTJR3x
	 tlBOiQmJncBdBwURL4R6FSIzE0qfhdnAxrvIYt7ocnHUeZNoxGW23i1MuxrUv7K8ZD
	 XZcYoSz2umCfMF0MiLWYxu/WJdMiMG0jMKLYSyRPzPmvIOerqHUJoI7+LNfziaIbJY
	 AuWg3nLXjTnHTV3aLPakHT7DTsUq8vkud0/s0U7131y1fhBzvdRX78mpZGUAgh1LSj
	 L1yKVOIeZDpPGkyXPKl6w8j/dMkzKMDjaKeT7IBXN1xXSw5viEKNc0nvMbq6VUX09p
	 yIyAoAHG3jORg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB18CC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338411368.22068.7437930879394181657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1aba827aea7553ed4057d1968f302f171360b27dabb82208c43b8a70e9afeae
Date: Tue, 07 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783384113
