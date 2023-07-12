Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4AA4427
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 06:28:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C5DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 06:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689143288;
	bh=W0f9n13SyjLCrL/fobgW/HZOeFxzQ2fYvck5zInaVmM=;
	h=To:Subject:From:Date:From;
	b=tgHYDjnXx7mZ6h7n2ZnaGvnfQYaxFDxpcj2OQKYZStgwx/BZ2t/gm2Bjrh7povLh9
	 ICHB4Xe+NamVn9JRYnEWmFD8LFPM2ObR3MuYzKE4OHK0ZD6cn76BkeqE46JWrFVXc+
	 hwnx4HDK7zUQH8UCa7x0EWWRf1S8yzcsho3lK+d2ybJps0c1X3QBTqaQgHMEf1ZX6g
	 KFwpKK1ikR0CMSrpZaRTSuTV5tftT1eyDa9Q71pLRcUPEL/mXRc8h2h9Dia6wqMlGh
	 NtJsdolmlTFWC1HdS8t4PjqEGF9xZjiDWMBatw8Nu5YEe89ob2+Mo1wKTzEXkBHO/F
	 4jgfp5gHOg9vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE6AEB64DA
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 06:28:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168914328877.18234.5309618329729011899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf0499e7827246c09a4a0a3df0e683b943544cedc0a73fca988898f6c067943
Date: Wed, 12 Jul 2023 06:28:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689143288
