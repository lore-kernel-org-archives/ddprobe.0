Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 943B86AA0
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 00:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F18B7C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 00:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692317049;
	bh=D+v1fkAPB0/yG+ftLJhcsQJV028TWKeUsvW3HY32bPY=;
	h=To:Subject:From:Date:From;
	b=Aqfwy/IPG1ef09JsYCoH+YzPQ4NnlrNOVDLprB2HfhnyoFZ9LWLAsoFNottqmzvIR
	 d/VvEovB/hSBctU6sciQqxZq6wNx7UFTteXrYcROJzXxcrBL2TeQoMpKpEKzBzejEv
	 wHJQS6xRD/rPo0iQxLemA56PBU9V8/W2WNjgS3j8LimymTH4tlvb0SyNZ3SaETnTa3
	 KVwseqZvR+GPo7PAigZqWd3n4mmeMlM6uMfbTlp3VYrblPKrQ6aanezj4IShKQ0EJi
	 yZpK9sjI/krkO6avsduIAvGgQjgt0QHDyMBNyW536iNFS0cvrEqssxZNU5K/3ZXvQ9
	 0dSIZM8maf2CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA686C678DC
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 00:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169231704882.19252.5282982764259525975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a462e56b5737efbde53f4adbfdfd916142070b502633a15d1da1550e7b7d3ab3
Date: Fri, 18 Aug 2023 00:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692317048
