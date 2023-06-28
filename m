Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4C323BD
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 06:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92F1C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 06:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687934588;
	bh=BXj+D74g4kjpBPZYeX8s0gda98B0E4D29A6ePZNnlqo=;
	h=To:Subject:From:Date:From;
	b=Kn+RjJvlNPhGTxyZH1AcklJ/gC8vCkMOiMqy6ThKSOHch41QEk55roZ4Q09etRLCM
	 ef8fzFNywMQcjaGIe2xMEQWBg5D0eZwrIaLt061OjPD8E1Qr+u4e2qnXhVH0lkupar
	 BgvD5zSRR4l1nZqrqu4usI6/Kyq/7rMiTgT+BZaX+onfhH1PqjEK286QsDJW77XLj4
	 6xn7VNjCsg2NzIgTJVoixDb9JDsK/p5pwRQ52Zc3RBXtQCq9Z3Fi2wEtW6nP0ReaLY
	 KTp11KLefaC8+Fi34CbuI+WlnJn6vcnBK5vEqQcQ2Zqu3hKfyt7R9sM4SJwtS+58Sx
	 bpRm07j3vd2yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF30CEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 06:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168793458876.31346.6622613553631701764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b972a80a43e8342aa1d30153f2583295914359ffd8caf4fba75530fd81842ef
Date: Wed, 28 Jun 2023 06:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687934588
