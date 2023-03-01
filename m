Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BD72F2C
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 14:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1EB8FC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 14:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677681966;
	bh=LB9aTk71Uk1lBGGYNEMTIQWnZ3tJwoxbF/y+SA10vuw=;
	h=To:Subject:From:Date:From;
	b=T7ToZtIzHqdvFRQD0DVNUs0hegY2oGS5FmI6RbyUZd9qJIhjKJye3pgidqruM1V+s
	 Jch95iurbuz7l7IYZlh9Uo6aIv4a298HtdZV/uBERdMRwqxzikBmWfiwT69CArjmtf
	 GDt5Lcmh/BcprhhXXXpqd200E2hOq7jDJnzt1FeECe0OBfKYmyqkkLOEUt34dALJAP
	 xqQ3SaESkWb3DLufwf/Jesl94eGimfHdiGf5pdoB3KdmBaHNqusJbiUKaXICgIXSFm
	 QT/64dpQpYJOUDLM8fjRQn8fGDAENqzwY4S/pV9JNERaYMsf+y2M27pAY7kERrLDMt
	 571oOlMdAJKwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE13BC64ED6
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 14:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167768196596.4687.15297459604791726868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 600bcc51af1dbcc31370b7fad9a7a210be2cf62e0ccbb757c475624ccb8984e5
Date: Wed, 01 Mar 2023 14:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677681965
