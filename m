Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19997B
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B106C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664363453;
	bh=Ra/G3Zrv9aHnkVQRYceEzmmi0iOdM1XlU4S32a/oKOY=;
	h=To:Subject:From:Date:From;
	b=NO86w1ljAN1EyR9Z9H2ubtUnMlvVmc9zkyKnUV7C0J8xHWS0OOoJ0v8x/KBWeDPA8
	 R9XDFOnTUvNiw6xpQ5bBfAw/xbhuGNtT+WgJyMNL81Hd04ULXIK54nq65uwHXzpD0R
	 3E3XnmTfwrbJv+II1myje4hnCFHsXNerwl2DB7KOukcF27i6HhqiDTWSe8bS+KpQKm
	 Z80kX0vhnsJNmyaYDEPEyu6denR/cxZdlc5i+YE53hNvQz974OF5FtWcIykskWR9gh
	 5hegqI2UvKXs5aCum1DihaUhEIrV4dQFvTCV+K5MCHvSXnD6NsmWCc9dw/8Xmpk3Vp
	 NqHTFKA/8R7uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52D55C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166436345333.32043.10457671631963122273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c31c5e23166c08e8d99d687c0ffb3b5061f0ab4a8944fd26ea64d3bcc846fe2
Date: Wed, 28 Sep 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664363453
