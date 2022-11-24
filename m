Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF720139E
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F067C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669265454;
	bh=1McC1QxkED13ORU9/YQQnSujKLq3w4BVUfaaAF6KUqQ=;
	h=To:Subject:From:Date:From;
	b=A8q8vk9Olnkm7WqW+JIIACSAqvK5SImA9fkVLAz8qVx3iGR3+fOpcrO6UtdwFi/gi
	 fqyXAqEHcbtHs5LGmG6mz7S36+hwhMVnOZlOgm2NdqljLl5rHih7IRMjt8Ky8rDkLp
	 TP90zmbWaOtIX8Q04MAQCv60EhJ9mplgLjK1EdAdiPCzl3/XUGVWN1bHBN7y5+CYXC
	 6ReUJ3IepFICjbAno3Ciuy5C5/IXMtv/GnwY2Zt0G2DxHCQfBL8KK8+l2IZf8yB/vA
	 3FvZdEYqjyI+Ojwu+UIy/Erg7cYAHKCmiwJ1aw9Ehruf6HcNYTpgbnLIKNb9HB29LS
	 WpPxP+Tt+n3Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55906C4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166926545434.15944.16152321359116118214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e769fc2e09c941b8f3b3e7dba85da22abe700d5b830e8c1ca5a1f660ec98cdc
Date: Thu, 24 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669265454
