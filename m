Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70EC6ED2
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 09:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0495AC433A8
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 09:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683105546;
	bh=Tmx/3hHOnF5GEvPTJUuYW2I8/17pb8kMW6hI0tRvPhA=;
	h=To:Subject:From:Date:From;
	b=LE5Ywy3OVBEIWppFcC+VjYCKTvmoEjituSCXNwZDO+I7XtON1gO6YUNLk8vVnKxhn
	 D2JllnI7Q1laGFOrRfn+P0RBrqM1Vov2xV5Xrx1YqSDt+j4Hx4gY24XMeGZ9EEwVBm
	 gQ7jPj/vyuYrzR5CUHE7YZu1AQE9HWPLJcd1Y4o9B59FyvFz+CevAYx91Xnt8swBRx
	 tcolg8YWtw7+w0h846DHo0+roBf3mHSkfCliBolT1xHxiRs9L9FiEkCspSL0jrJSgw
	 WlWQYBMrtNObshBfrFVkzLLm1XEAUQNSM3OrRRsINLfU9Tu/j8+nW6GEMOsOcjACj3
	 IGM5H56Pos45g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C576AC7EE22
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 09:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168310554579.22395.9608138327330057852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f5552d760b2392064aa699098127a4f0ebe4c7bc1339e4b9acd3b3dee043472
Date: Wed, 03 May 2023 09:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683105545
