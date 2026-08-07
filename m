Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4177237A843
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786088434; cv=none; b=pXKNLaPt2NSvYVHQ/wLuG73ma6Z4kqoEYrBDQaei9+CGNtPGyOrhbZafr45vgGppFKPonP1mN2/ZupfOplGRYoYOL4g+f5FVJbQ/GwUEtY1+sSQotxkb8EWC0R8xNAQg8YF7Dv1/eCWaud3h9KjhZXrMEBOlnXbR+/4nnTwlNEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786088434; c=relaxed/simple;
	bh=aOqbxMLVxUAumAraIoNGOYBq79E8RVUcJz3bVUlWOIg=;
	h=To:Subject:From:Message-Id:Date; b=ARKYdoA+o4/fzwB9woK7tyalTN5Llw5Y3WrgWcvfOkkiM8FpLhLlTm5BLmt6Ee02Xzk/fyJpOPHAzQk0og495COtzIJcmf9euUIfmq46eboQLWLI3z5nMvfumYHYWeVT8E+UBUXhvFZwdroKTYZUQZADsnbj4kiR9BaTtZ2X5OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5Fqm+6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5Fqm+6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4A5C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786088433;
	bh=aOqbxMLVxUAumAraIoNGOYBq79E8RVUcJz3bVUlWOIg=;
	h=To:Subject:From:Date:From;
	b=Y5Fqm+6lUyhHwNVVdAHk9sPcQ3xEXLEFk/4ZMfXBagMi1yfo70YjKFJUqvYHlx4d9
	 01101eJSpA1V2g4xWkqjzLTpqtXoOe0cD5+m6wW5EgEl6zGEyD+vd06auFNLKjdtvh
	 QFPiCUm+M5j2ofXC0ceDa0rPeewd+oq/oHYTJ/WrluhnbNUNttvX1DrFvirJpw+v//
	 YbOLW7de7Wb51F07wAGNukbywuOBg8q4tBB0CDb9VAduIvQrU9QpIDdwIiaVBJzJlq
	 9VztsN0Ycu0O2xrV79OCiPwOvAJ5eUcDn0e6HBnE8NpBU4YlIjzigAO2KxX9A7Y5CV
	 XSt5mzOHIe4ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA674C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608843368.11074.11254718319552947581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a15984a46b66179beedbc7ba880047f9cbca03bacffe7f14074778f6bfd6bee
Date: Fri, 07 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786088433
