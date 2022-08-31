Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07E92F2A
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B5FCC433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661964653;
	bh=/c0Kq0mSPS3kUlV/22vcIRJ7GvWSIDRguLTCrZ2kkLA=;
	h=To:Subject:From:Date:From;
	b=HHpcncBVvk9G+9PFS96BuHG+pEwT4k8zSgkr4Wh92syIG/QpfU++hXMVfECdS1bL6
	 Rg5hAyQmDbY4m0fdWB810gEdCd0VAmnY0CpI4i24eMoNQEx7yYz+EM6ulwAUb4NWI+
	 wzCzgE7feSxKU/2bTr/pZ41vEhGC+TYmPPNzJerQHfGgZr4XgckgZgQsQKzC6+V7Ss
	 U/b83IHwirRLMZ4GNmVUUXdkDVkNHDdvUJ25jtWxr7UaooQxSa73JAqPO86a8WVMuB
	 Zzjv5M/FAoTZvxrvyFCRqk82UR6CgqeJvQooDWM1izy9G3GE9okhxRNHow94Z9tF3k
	 LIIGNp/FJMLkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52689ECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166196465332.19690.6165449812847189191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07262fbcc5557713a867aa9a7888845854701bcdc7cbece281334a8edc680a2f
Date: Wed, 31 Aug 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661964653
