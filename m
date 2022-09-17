Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD6553D74
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B17C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663438853;
	bh=zZfKRvbLhMv9q/+TuoeCRwbfAw9rm+TsFpLXInjaVeU=;
	h=To:Subject:From:Date:From;
	b=Suy/kfvinjvEljMoMM7+CyBAqIqdiCdGYqUPDAkK2WQZj19u9tiCCLb6s3gWjxwrn
	 f8vNW7vlrb/Hx3lbxGKKmG2Rq/dybhuMQetZ8JpKh8af5zbID0W9B6YVHkhi73xJMT
	 bBrsAbcZM3b/niNVlzOUVYhM3nAMUbTLigykGrKDeQFi2m/1qn12wM5oDzT35hrqLk
	 MXTjqQKTAgNrEINJc/LosfiRDQxJQwiT8dniv+ioF0pzbwzj4ZGZ3MBCaqjrE8yMLu
	 4AYLLmt7ZLaSeGjaujoYvR24VJti3hAP2W9VnqJCBESIYsxqdHnfP4I/vKnhx060n0
	 oPvDrp9EnwZ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C91ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166343885333.21124.17736997332435682434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33663da522fa24e4ab0bf1ef3fccb5fde59f4dbbea2d6d139d5a9c9e030102bb
Date: Sat, 17 Sep 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663438853
