Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C902CA52
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80410C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665970853;
	bh=6FPV4UWdRuxI3392QyVn0yF/d3uWZO1bo5cvpzTKAP8=;
	h=To:Subject:From:Date:From;
	b=JkkvOReOifddIoMSAlQVz1CWc2Mxk1xZ5kdjcKei7zTRmIL2jF0gAV1dqV+39InWl
	 MjNZeJkJXuqMxfAO57DiK/4+t8z6PqK4DNDX3ZC7hxPCk7uu7AGXBypgq9ht4OzABW
	 GM6c+XE9YiO2vRASQBEsJGjuS8EOh6DB2GQR2rF9eys2SpRwq8efWitZF/dQjK91eA
	 5WZ9hMhZbje2TlYSJUk7zDwdUK7Ds9rkOyc/zy8IVwW0ja1VcS9vP5PnmEsv7HrI2K
	 6A3sDPRUv0/mIW+Ag8VasG14ApQ9hDWkWZurram6z8j0hLWnB0eptuhts2SqlpmTUG
	 YhvQ9zpdUeFnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EA0C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166597085334.1787.5156426884812856662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248f7f3d9ba71906fcc839ac807bbce92d06c2ce9e0bf9db7737f622a8ce82d4
Date: Mon, 17 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665970853
