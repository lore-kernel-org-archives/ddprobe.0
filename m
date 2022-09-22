Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A345C1851
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65478C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663809653;
	bh=tSqg1GukFpWfTZo8A1cDN8/qVyiFOUFaLqPH8BFvbtg=;
	h=To:Subject:From:Date:From;
	b=eP1P0wDsxcpiZmqO5SPNfEWHu0HQWKmAZCwqp0rInkFT4wZfwYuHsKONKIomdtxff
	 aWkPzDKM7FgtVZ6WHSm9OxZALJ+A1Q3/sTyYOe1bs9dUXjcbSDfqx0QlsMtNcs45fk
	 h4RNqPk1cgaxrQoRrqhXLQtQQ8RDZZ8X/wwnz7RXLTDzCvpK4kKjHVJawqziKsr6s2
	 icSAfsGRgSPA23Jb8U02RlnIS8ZUrX1otYUw3ww2pFSjKCFhlNPePrkfK0SZ49LfIr
	 PKk/+vWo6kxNiYFou59clUovjsxAjYKmIQusm7cWkGXaD/GhYOWiUERjzKuZ35/HMY
	 cwsh9olmF+COg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5068AECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166380965332.17581.17655157463052753754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26fcde7ebfc7dc0e950a95152240b933fbd29df867cdd7e5f32b23df35181dbd
Date: Thu, 22 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663809653
