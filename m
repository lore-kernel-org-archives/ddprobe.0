Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7BC53A5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71223C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664475653;
	bh=Xjsu/fa7oYEiwAWLxx0QCVk4qS7cahVuOovd1ITlVjs=;
	h=To:Subject:From:Date:From;
	b=mvT+12urGKzekQ0ImMnwN1+/QEVmtyaZFx7k6zNlThDzUXlfLp3ZZaJwN7Uwiu+h3
	 w9iCtLAYQZLeLvAsa06R+k3tk8zJhmy5Avj0iGK5UjaaHwXTEQZmx4jsx33Fl6VW7d
	 vxpFsUOWwwy7y3zT1jauKGzVZ69pBoNDoZUk01J/njddg60VscROVx5cizGut9ySz8
	 PI7Alh5m4CrZZH5A9Uu4K4NhE3GInpux4lYFkf/nExgdEA/0nYeroUebUuYpzsVB5g
	 yAXCs8zhxZ3RqYm4QnKwHe0JFKsaIYsegZwAn0Ps7kqDHjjgWUNWjOsm/jUUc/oEeB
	 9qUqN0TpqN7ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5636FC433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166447565334.2676.8142275331667599069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e13b80410d759d9d59d937bc336369536e2497ffd602eac0d9559015179258b
Date: Thu, 29 Sep 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664475653
