Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D541235A3
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 19:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76D0C433C9
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 19:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690917128;
	bh=MKR9MSI2V0PWWvvxregGZLHk4/vIibtfVWqFAg9nRlQ=;
	h=To:Subject:From:Date:From;
	b=nf5U8VQ3th/glx4AIKHESJlFYNliG7n39cm7biohzYqAHcLV5WRFGkhY7vm0mJLT8
	 f5FIJ7j304Z/iyA5V7Qwx7nJkQL+P7YIB1CPruTQvONGJixujdmB/+2wUk1SkGFVZ9
	 p7ClBQJI8urE1XB0xyR3K228D2/CYoU1gnv4XNP1S9UV7gUGnLvGV3adXNw90cxEbK
	 5jo7JcsFg2mmWaDH1tduisnQAaF87iSZYGxZwQEcLLHQKXLZ0oF8e3b8nmpn6/tMtv
	 FZdpL5/LFYHlxlwqoYbj31s/NL5uTfNoFD17q7VDvsbbdAkwnQv034QJcl49D3k3y1
	 /eGAXDXEd8Ybg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAB5C04A6A
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 19:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169091712869.25945.11889459469917137772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69037c5f43ab2e192078cc03865a70133b9b9c3bfd0f9df22e67fffc6c3699c2
Date: Tue, 01 Aug 2023 19:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690917128
