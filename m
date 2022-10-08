Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47AA538E
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8746FC433D7
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665252653;
	bh=vaR6ZSVLPYO+kOIKeZhw8NaSUR7DSw+s0pfVjlqGb2E=;
	h=To:Subject:From:Date:From;
	b=O7+MLhh2joqg2hWFMnd0EqiagyCu3lEFE6oFaINK9Y3sckcLe5Ffl4F/M4veiw3kf
	 /ZJfLzTv7mZAezuQw9rmpZTOtLk7HIe1CQBZpXt/cX+1YGsDlzm6mbuqyCSpFPS81A
	 C90PuoQx5R+dNJWLN3kj1ZyL/xtXlggrTZW4Jan0lSCK7i2e2fokHRCP0bzPLUzou9
	 iAuBj3oFeQC0Row1TRzPp/O6CjbCqfTXoLVP00hFM4VG9UaUqXAlU0Y8gXMNRKRr3z
	 8Ek1nu6q1yJWImlbmYuL2K6CJKdceE7okj3r8mEZLHLgdPF6QfcuI7vGElbqBXhUEX
	 mSD3IfB+B7XKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F17C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166525265334.9435.16134027175852301108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf71d415a8e0d8946f49fa311edfa7757049b4e0d2b3a2035db75cb8539598f
Date: Sat, 08 Oct 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665252653
