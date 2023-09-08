Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5235226
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 11:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37D3C433CB
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 11:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694173448;
	bh=N6O110Q2HA25sUj65m340+DzvlYlHrQfxlXEtvM4/yY=;
	h=To:Subject:From:Date:From;
	b=OnWQeUTSGx1PKKLXTFQLF2/juLaM+fXtnwIFdIn6VDZnFiqOo1gCTvrHDSxgPpb0r
	 pcSdERnHZ3W8erFsfkqqOD8fcyD06DGRY0F/4hleP1nHKQ3bFFuIwCrJS744CspC0o
	 D3MxG/3pYoq45zDrVSyfsf4yXCxCvFTXpCNP0JF/n4vc8ZDtVUNzyzVACRbZZ6q4Ll
	 c7nDKyX5Dk47YM30tHRA1xDkWRCJgDQhJTwky3kd2bw4EgGdUxixz9pQ5am7gFBWX9
	 M0qzjDVMlrF4Oz9WjUUzOiLJJlAS6Xd0nbvXqQTKT5NsrT60cc0qX4yDNRAQ4frlMk
	 I2NqkkdyIwoCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6536EE57FC
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 11:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169417344867.2882.14293016875902826286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de71e2b6f2433da6777a26f5a74701f1a6d80f406c3c06dbf05fd59cfae843bd
Date: Fri, 08 Sep 2023 11:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694173448
