Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F01941C20
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2085C433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673930487;
	bh=jf48YYE9/eCJwa7OLi1Bl6rPq0paPwcG9piCGOZrGDI=;
	h=To:Subject:From:Date:From;
	b=o83XQmlWQy2mQ1GIsTJuPd6Iuvq30Z2mOM5YM1nREb3su0uL6bNph1bIiVkAF6uwD
	 DLZWhgk0xfSjqNhWiFOhCpArnCB3dJfwFEThoIceyj8BejZeFP40g7A/jaIRKAZn2i
	 Gbbks3QnepROlqLIZI0zlD7JTzE87JVZQ6Xy4J96DyuJsTAB1zW1BenwUakw+OeBAu
	 RZCmOpMZqDEs8W6S2ha270tJVImjYp+aP+ir+Lef2LYgzboHuN+AeDVq5JM0xYZ7iV
	 sOxNZHS9h2o/uyzfWVVJlLGdwxU+W+JhS7eXktwjegKSoO0wz5V6r9RuNP7XB06eB2
	 0b0SHnNQYbJMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86C99C6379F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167393048753.24381.12400146324287512771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22bc23bb13d050b76ed6ea5bb5b95bad1ce91fcbe012711f3d7a8990d298936b
Date: Tue, 17 Jan 2023 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673930487
