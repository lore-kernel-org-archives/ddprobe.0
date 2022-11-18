Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3798D51B
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED59C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668810054;
	bh=GcyIric4Bb3xfqYJfINu9bJAjYaVSdUcO5ke2MZVYfc=;
	h=To:Subject:From:Date:From;
	b=UtG1S2ICHdtsT+WVjLNyFbl83edsnesdboksE0Vmjfq6zA45AqePsm4W0EFwCsMe3
	 70RiatSlyQztzTnvOL9c8DNOjCUo6AMiDxVIBnmJNd6rEWCZhEkecpfdYAf6oo8pDJ
	 nCJQknLN+N+cu5cpr1/XfRHfgpQFQVpzu1NpiZ6Oky6fDZUKel/Neo/8goDXLHePvt
	 lU4inuIKIECWiJHIJNifqomgMOC1MYjKaTzVSdM80BG00oNgKxQfLXwIrH58LF9o99
	 FAh2RBCyL/sYKT6NZkswcXYL/4B1TTDmhB9GVN+Gbg553oNM5BD7hJBIWoidM3Wv6e
	 79SKd9NUuiXUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF65C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166881005436.25930.1915808131579071736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 223f607e20d9d0f74ab94c60d031fbfdfcb3cd365b6a38047a0c254ccbe4c66b
Date: Fri, 18 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668810054
