Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061277A
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 19:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653938219;
	h=To:Subject:From:Message-Id:Date;
	bh=hNmAdWFkLFPYMOR57Xu5Z5F4rp5iDpMIPRDkrnjC4Ww=;
	b=DmN2gDK4pbukEJIBxnX4xEsBtj9e1BT7LsSrrvamcIoHEPa8BhmFAbu2jboJMWK9
	q80O2yywoFBKzEGPNW1UuQwiLaYSkfPdOBMpV3Jz+6F/GYEmYfd3y40ffvu/DuFf4JB
	9hBJ/f2trepKtu6xOhmmGboTDwE6x6MCENM1FgdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653938219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hNmAdWFkLFPYMOR57Xu5Z5F4rp5iDpMIPRDkrnjC4Ww=;
	b=bRmVi4SMKdXde6GtG4HlU3uKIdLaenSKziUx/51XblzzHM/ATvj/5lKM6kX6iPsA
	j7dJEciw/XLHmogLCRIaXAZLiHMIib2FWl4/nC9SG7YB8IEXeKRNaLGG7/0dN2W7lNU
	VMf2qPdGa6Jw9LdGLOy5fZLLSjUxuXgnl1yyMOS8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018116666900-d688820a-731d-4477-9591-d4493e1f9046-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cb32ed5e58d9a941ca370e3e4837f719fdcfd460e2a0df891a4ad22f3c4be96
Date: Mon, 30 May 2022 19:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653938219
