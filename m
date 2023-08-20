Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 934F9EC5
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 05:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6D9DC433C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 05:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692508448;
	bh=cAQOFvs4WkOzcoeTQPAwbi3ofZpn5RzB5VGaE5dNQdU=;
	h=To:Subject:From:Date:From;
	b=ViqxSHcGiaNlhwfvPAuZS+6v5Qz9k9BnoEeNWYRAwlschHYVe1jpAYFw50GMIy5sD
	 1LQOGO6o6tQTs369KxUzE2D8sYwElt3JVsF+zaMEXs4QjAuiG2KnaKsIj7lbMrPqVf
	 /WO88ff33muL+dz9I/WrCuCyrqV10F+GhqyjCH4j8KDFf8CHGsw9A+UL4e3JUlyJ5T
	 O6VQ78UxXcTeW4gVRjYOxTGXfnGLbQwGtUMS8R73KGUlpBeR7jHXCpCx9HxAUk7v0R
	 Y/zqNXlg6ASGO6L20ucbiZI5X0bGMfh/1qkBo13i+MNf1BAYHfI3JEO12BMB/Oedcu
	 rQWoQKR4pxJ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C460CEE49A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 05:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169250844878.15593.7507252981377758259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e0d329f0e9ff486b236edb2df5b461af3b324bf2bd3fcffef6ce31655f65321
Date: Sun, 20 Aug 2023 05:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692508448
