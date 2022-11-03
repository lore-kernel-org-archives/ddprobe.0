Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7B36FAE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF1CC433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667476854;
	bh=mgtT7V0kcYDwYbXOMtr9NYYpUNAjNWJLY85V8SbGGNY=;
	h=To:Subject:From:Date:From;
	b=Cwm6nnuhh/Gbqp+p+876ACSD2RDPXFtaKlyjjSSari924DysK6ZOg04NwkVKPdkLl
	 FN3djsmAKQK0XS+mBa6gIZciRrrVhhk+ZhRuhG/roN0LWeCIjlgSeHukFjBGRGADZE
	 7l4ybi5C1Rs3GJ3Qlo44xdC+8dJgdln5llTw+xUmVMkUOX96FZXWwiN3+lt9nlpK/Q
	 pEDB9TLGlgoFZWQZzBbfFsjEoph9C48aPQ1AjSsQesJiY9qshoUy7wMEDhC98QcKgA
	 +/yjtcNs7DQIJiKBGUXU5hinhmIBQxZ2ZcDcfTQYVV0XCiUKOmMj1SmZkuR60agY9f
	 loS34grK7j9/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59640C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166747685435.7884.14359259161811500177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5fccd19da0638398b7c009dd31695638b3020eb78a661cabcad9c43f54b752f
Date: Thu, 03 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667476854
