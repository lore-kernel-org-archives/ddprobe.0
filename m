Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA061398
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 20:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83B0C433C7
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 20:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692476048;
	bh=9HMkeezoWZif8uR9RZ9vaq5Pb2JDKcSo40oZlwAxlt4=;
	h=To:Subject:From:Date:From;
	b=HdQFCH3EAHdr6NT70tapAaAZwjz8FXvj00TaDixOBwfLMuHInGhzytQp1o1mIr5H2
	 JyoISylTB3hLgf3VsCa6TkPCkZ2HK0OEteWYJv4wrM1a35GbUL20gLCg63klU1flLc
	 jEvXin1vbrQG8qmVFB6tekTkV5irTIqT0osjO4pbp2HTixViKk1NfN10X2skelSbGU
	 OGBU329yWhbnjmW3sARVZ3tp9x6mvGvVq/7gp8XY/s+P3r2HJoWpyYelL0dniUXbS+
	 o1vI6p+p0xsayMGbdgspIi0a/IhRZDAVVkKgYuSl9m/9YvhYB2eJeeU7num/VNglUD
	 2T75tiT6E0xiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CEFEE49A6
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 20:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169247604866.10074.4335772814651853432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0608be86adeca12792f6a251195118ba45b55b207a5171b1524bfea62a0947cd
Date: Sat, 19 Aug 2023 20:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692476048
