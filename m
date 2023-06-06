Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756D1361
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 02:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF970C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 02:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686019325;
	bh=Q+U1HQ1OLlnh62LwTE2kGJXx10/ktxpIUzvNCUC/M3U=;
	h=To:Subject:From:Date:From;
	b=pE2ESI/WPGD5aAAMoYW1gp6OAak+z4XdBbC8pclsZdSowHsuUKql0+rcSrZLUMjFz
	 fZULBA/ExRH+3RN8XGKMKd/ehXRtJ8v9GLNzyZSOhfBlhx4gkJSjWzGcxK6vz7IsJR
	 Gb+xC9MCUp+e0v+whhv7S1Gn9vWk3jJhkxt4mJwFvmyOuTo813sPDDI8M/EI/ovMwR
	 7nV052gjzQa25Oq0qksb6qchcwkfsR8zcBo3aD5SH7tsh92XKlLl8568fjHUh42dsK
	 MtdFz8OB+AQHtKbhCKF9kO4vOwKckfmEVwg8cwlB1eMQwI3HOpUAHerLm9KpGAESTC
	 nVdJ4PMEk7e2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEFEC7EE23
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 02:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168601932576.17278.11368034943039662241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee38d230924f4827fdf67ce20b42ed4e8e55482814552cc1b1288542165ffdc
Date: Tue, 06 Jun 2023 02:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686019325
