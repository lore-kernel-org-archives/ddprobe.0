Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6506E323A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645969284;
	h=To:Subject:From:Message-Id:Date;
	bh=CEtdhKMMqiAViBLeWnE9UoRffevBofxaMavjNBvNfs4=;
	b=lKGx7OCktwFgRwJmGY+MbPikQHGZdl1zmp6NhkbsfMj2K0918zbadwywtz0k5PCy
	9u/op+hfnUnkIdPUQkYYyBdQnjbNEAV58jOMMX/EauVrXrPpQaL/C0+/nrZI9pTwhXF
	fZYSkY2Gbl2r5XJq8GwstQL44xmst7zutmmtFvws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645969284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CEtdhKMMqiAViBLeWnE9UoRffevBofxaMavjNBvNfs4=;
	b=Ku/S/tDxB+rL2Ygt4eppUWtpTPU1746CB6L1ypLr7SNoIIQYE0Yt54u7GQYnyfJO
	6ixz0cC8oVx1VBab+0EWT80/EEQlVzy7rakGWvfCVXX1xjCEBY5JSyhGkaDrjw13VJx
	Proxy6dlz9sP3j+VexrI2lbibkVm0wqWDlTLA/wU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b6a1e6b-6d3a3514-e3e8-4212-80c9-60dc9404cb3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47760b5a4a7d3b78ff061c0dd60c07ba91fa1006f8a4f0b0fc1a48a7e62f8f91
Date: Sun, 27 Feb 2022 13:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645969284
