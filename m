Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE4F7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F2D9C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663798853;
	bh=kPYn/q7sW5eN6SNSKTf+/XwAYnqhgeXkuxnCiFdxhrM=;
	h=To:Subject:From:Date:From;
	b=Ln8StnrRUW0Bug9rJQadUTqGYhS/waht4OMfZiL25jan8CRyAITlwVcQcPm6dpx6Q
	 beN00xlMBUrxqsUTbdU6LGXRKfOAajc93rqfeMLi4faYMWn8SL+nwo/O8mcu+GGRUw
	 BdsPgWIWvLylO2Z4Kdt3FhQ3VaRBw1aVeLolHkz1NDs2a9afpDA1Iz5eKrDC11ej0+
	 PvQvF/aYAW7+cucPS1xbndQxovbbcxccpLsg0DkM8U7XtYhWTf9TKLjzNQrjMyjxvf
	 ryReQ52SImvr14QMLMMCw7mxMEk5EJS7GjTc1LfGRenrth8ALo4gNZ7gsN9dwWDCzm
	 0UsbA8H+ipL/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A7FECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166379885332.6106.6942684151068252755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63951fc744f02a9bd1c1c9fbf7a25e985f48effd45ac07aab21b455e0c56b5ce
Date: Wed, 21 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663798853
