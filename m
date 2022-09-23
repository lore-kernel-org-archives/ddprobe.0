Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B998515A3
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF9BC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663900253;
	bh=jP4tcoxnuEW/BbBZM6TdNvYatggSP1RIoojmCM789sM=;
	h=To:Subject:From:Date:From;
	b=lIDjrPDbXfuQlYKEUPpEOQ5ChTHeHyjE4AIXAtXz2Lo6EaH0fG1OmosrMVw7333JV
	 TT6OPd79tvvFKiP14G9qGQL7M2odTbDVql8vuYCQNCZSMI8OcvCkE/c8jmqYnHqFLa
	 GgEmp0SEok2WHam89Ev8T8enYwAZ4DjjqHutJAWaLfR5lnuzNZx+hCtmEl7wjdhyW9
	 UXns1MqjK5u0UTSScHjKdfkSMl70vWNvXTn4YdglnPxmn+VX/OF8EQFoWamoqbI86w
	 YYgoRlK6Ja6axMgzl2vQvyOzidi57zYOK1VdMlF+1BHitkP/qQnz3MNgGSXiuVVjCi
	 FT97BGvPZkOqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58596C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166390025335.28843.6019971745895823294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4e21c805de7f94f5c7b264877707be1c98271e968ac77652c79e497ed847ad
Date: Fri, 23 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663900253
