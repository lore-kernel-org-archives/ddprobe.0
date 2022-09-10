Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32265A6F
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75EE9C433D7
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662829853;
	bh=tCRtYhz2+1AJl32qeYKHdj6xKGPUVKQDSmtF5YzJwZk=;
	h=To:Subject:From:Date:From;
	b=uCTR1uDgU1vHFjlGi+Xeqi+2zKqaTYGi4CXOTv13kCoEz80fks6qfq6AYREflWH39
	 N7z3ZPvvgtDBCpLraHfQP49D/0I8fgJ6nR7JmoGOptDLTgzDSS+/wYW/z9HCjRjKER
	 t4VVBc3xZS+cVEtTqWVhVOmX0XA5WtRlxZa9TJuk5OQ65NeLCwXB9xCAle8wg1YY6i
	 WpOWNCXy8wCArwse9BwPLcdROjEylMSt4DL1gPoSCYJ8WWy/CQuQH9TTZjUr1ZPHiS
	 BDYG43/EvsrbhJouwhq5CDNbKStglo5djC3U6/RYgxf7LSAWtqMKvI2AatEY0vTXlc
	 y4pQS1qcKYSkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C67C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166282985333.8991.16184254908824846638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78ab76fc2329b4961044217be7d5644736ee8462875745b4650e10612c32d52f
Date: Sat, 10 Sep 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662829853
