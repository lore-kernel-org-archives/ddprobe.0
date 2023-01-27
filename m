Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3877A7B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 00:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F83C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 00:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674777785;
	bh=LPITLa6XwfRQIoPuf1QUGnhze78yg0AeSYuXAoW8UwE=;
	h=To:Subject:From:Date:From;
	b=e8elFyKy0aakBbZbmNrVzrI/2YNbf4sv70FSfK19ctIWjUMZLynxIo9ZoTLFZnvz7
	 q8C230Qbcd7xqVMzWNCvLtm4c8R80UDLRfb2pl/xm0iIoIGY3DF6Y9hmZSjrj4O7s/
	 bgfFYKhSXK9eZTOnlk+xhMVz2Cfk0O/U9V8VqJ4DzgeTVsEkXMKJYh98RR8ocQBCrq
	 fbimctNango/pckuRJPRstOtsfikk9sYRPDloK4rH3CftgQNxuj+K7iinfuIWgI2DW
	 Miu9bYNNTGyssGqZppWQI/MsaGfWLh8W8TVqknVv+XmpJFXnoTyk3Dr9QQ0Ep1+9Rk
	 xJ/KTAOWGDTRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BCFC54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 00:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167477778575.25325.1107039539812186300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3fff271f4a81e7d15ad8a700460d5ee7d6ff7f612e4435d8d76aa2a1cc4fef8
Date: Fri, 27 Jan 2023 00:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674777785
