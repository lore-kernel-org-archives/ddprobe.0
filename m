Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C4C3D70
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 06:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EF4C433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 06:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689834728;
	bh=c8UfRp5vqaJeEY5rz6RW/t7NRGkyk7SI5+pVl8OfyeU=;
	h=To:Subject:From:Date:From;
	b=kCW7XGz+Ni2WPx5V6mpis/V6QaCiv1fArKJrhEUzEmBH+NmpvyDputLYaOiEcoj7R
	 D6Gpxy8lDS+fE8lVkuT7qqPyZiXdlxqZ04RAyYQ/MiqmK/Y5PgDqjPmgqDgObsq1OZ
	 zO7GgzmRUFRTfl7aUKjSfHJNOWAkybtCvupxfZRQ1XTSrzYezJMQtyFQukk2/a0rDW
	 xBdBkMaz15lm3to7sxG3EIb3GO3U2y9E27enibIwb4s5b8KiSvf7q9RGE3iF4pgAfO
	 uVOrjT0GZf9/B4QGHgnJ4RUk4sE+tEtn4ejzQjZoQ2bKsrExgl9ceB8iiHyHb1lkTO
	 MX29CXdQ75LOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79E2EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 06:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168983472870.6276.11305006529218664153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d01a05c5e10460d8d3458aec83205c051b4a63d15f740de80f4c8d65822c3d7a
Date: Thu, 20 Jul 2023 06:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689834728
