Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27FA7F7
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96186C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671270087;
	bh=Phr0RBhnjChL2yjMNgSk6yy8BFWHf7L2hxKfl3uFPT8=;
	h=To:Subject:From:Date:From;
	b=F9EXr18WgHpkwOZI7AfvO9QXMb+c0vyrKub+3eoW9Ro2dQABpR34G83s/X0hVj5CH
	 ITBYYEKOLDpJr4+AbH2SiXlZ+VO5K7qadyYaSeIwUFxNkW2aYV8m3fw0tHXUiIR3Ba
	 UEU5BFzzkTTJp7npl/uqNV543rs8/xkBspYCpAnZhV5vfHdqAcPyCHB5Dr/UNZJ4wB
	 AoQrX0G8Pp4tQx2LZDfvQon1CcWpEXGHmy/OGn1yUNTFf60IlNxE7f46Hw0bJXfzxT
	 pDRJGFG+1eIgtmLsNnUiwtATUY1p1lKCpOTWmjupdG8olaCrP3fLbOJyBB0UJ0s8mt
	 YD3QK8iNzAZkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79BB4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167127008747.4349.16981534873539123009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16acceb9f59078c38b28719ef7ce4c8d5d0aa4af8391fe40603640cf263c7a12
Date: Sat, 17 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671270087
