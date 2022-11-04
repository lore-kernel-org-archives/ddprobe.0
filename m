Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE86DBA32
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C65CC433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667605854;
	bh=JyyEirRiyPWaHI/5qWhEb0PWOLs6yTBwKYheXepkOSI=;
	h=To:Subject:From:Date:From;
	b=sZk/77qQWTbZY4CAoe6JO1rPicSao8oIdjMPZmwFooBcd8OeLDI5G7n5FYy/+x0uT
	 R9ql+QkC/lji6scwF9YPWp7XoBWV72r6fk/kUh5xMYvOjIOD/lCCKqp+uV8tdhUz3y
	 qjp7yJZ2VXE1U/KQe+/1EfXVea5Ob/fEO1BiuljFGuUJzICewTu1HP6V55xVNu3B/E
	 Z+WAWNZBvcgc2EvvM2GcryWFo6u//H1GlYRFzYp7BQF0ZnleKt1gq/k3QF3kMczmGJ
	 VOrnUxexC8w7gbRG0xz0YVpqYfsgzLj7d2usVFQz4V3sPOFFgX6VNtWfV2v78/dWvy
	 HEW/ZkhoIfitw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E34C433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166760585432.14835.11970733536295014043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2ba67c91cd7068f06d3adad537120b86eec69295312c407e0b1343ad29291f
Date: Fri, 04 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667605854
