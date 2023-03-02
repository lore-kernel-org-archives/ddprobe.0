Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4826FA938
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 20:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA265C433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 20:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677787565;
	bh=pjBrWWFrA/oQwe74mCcBJBU2vsiEKRXF2fzkir6T1/4=;
	h=To:Subject:From:Date:From;
	b=Lac0I5HDGexbxczBXGWT+EHZyHUwDc2utnJUou7Ygw3tc0B96hd9iYT3RspAT9bu6
	 on7mBcuvkuXZrlJltzBXbSfxibc470sZRfyoLVtPIVg3TBlQCF5ZCZp3n1RhDE+etZ
	 e7zukD852zsK1TaEvKKfAg3gyc8uXx/6NcRxq3iA5xC37skvQhu3v/Dy993ZX90uh6
	 WHWr/D9XlKlNz6ym2SF4jHvOQJdUEwvOFi43e3uV0pNilqbEAhKIMaezXJLgXzNqPp
	 Iq+ct+BvkzJZJXWBlZN3E+W8WxG/3wtTKhwPOo1Bpldr0BGUrmB3lSAVYwX3V3J3Ab
	 Shf/wTAxPz+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA6EFC678D4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 20:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167778756580.2128.12521373091665997467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf0268cf5d186731ad2a8943020c16dd9e01e0419f71fa46532621f770b1c21
Date: Thu, 02 Mar 2023 20:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677787565
