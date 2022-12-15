Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18FC190
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 852AEC433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671120087;
	bh=ywU2ZzIH7vdX+TjO68sfSQ6rZybifCRJmRqNPJ1R3Co=;
	h=To:Subject:From:Date:From;
	b=Xejs9touRxrKm4B97Hj5QSfcAjnT6+9qZzDIJlSSo1V7XOffLK8REiTHxiB6uLOT1
	 bXEYxyMiSC6RiJv8T9z/xIb5IAanozhJ1gro8dfrFZlNAjQtfjb9u0dAVNpVXWNQIz
	 PjuK4oRebRK1/rdxfujuFnDrIDtV1ja//WumQf7HQxzgJYYioYJJMeXRJjIT/OTSZQ
	 3HDQ1snEzw4mI+b1ZnwJ/dszp0gwg5Q5UvXLgDrbKXSp301B9V1h/LnvyXKa7tsGLI
	 /RdhPyDNeBvOKXsEUnvXgwuzJ2/UHstTl3TxXZGdvR7S6WKx9wzH2r4ky6EHvpMa4G
	 rztZ/idJlSahQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 642E1C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167112008740.4214.15753421941545829945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69f5b0493d3c46d2bc9c74e89cbccc043c5083158adab588690de0b0d23610b
Date: Thu, 15 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671120087
