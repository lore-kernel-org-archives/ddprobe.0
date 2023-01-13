Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26272F2A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8255BC433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673620887;
	bh=tqkgsOD++Ui+5FCgPcuZo+iUZkJCaGaf0jxDn6Pui8g=;
	h=To:Subject:From:Date:From;
	b=G0ZNTG3h/wpW/eAls29dGqr9QoU3YxPvqvegSKF73nDIKEYWRTr7hi0DqHpW2WKHI
	 6vsRaNKRjWjSkTvvDyiTUnWw+nxWN0PKPaMTgE7VEe5/vXWdTRcFWkPpx47+b3In//
	 3bkKYWSHQH6RIA0KP05j5NGrEAkDRRwUElKvsMgHf29ML4NnKrYPhe+pRuwc2OPRSQ
	 9LyQZDJlx1YTJ8IBgIFETvQ+RZ2G/mZ3Y+mG/2JQPYJYfGHcM6EH34ArTDUcGI84OQ
	 t6U9ahYoXOEVby4xFqJcx8O4/uP8EyZnCdr7XUhfT66KP8WqcV86yeaeU7L4Sew/BV
	 NB0+Cq9gUSQ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65615C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167362088740.17299.10632635667814707698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd62349eabd8960f3d41ac29c63f7b7277f695bc826a2e8a52687e1a04f75a4
Date: Fri, 13 Jan 2023 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673620887
