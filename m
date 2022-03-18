Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD0FB2F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647592284;
	h=To:Subject:From:Message-Id:Date;
	bh=fZeE6dBMwHqRLXEK3qFbxsmHovpWOdoPGIwDc4V+CxU=;
	b=RGIRAne6K6fgCfIY7WHbZxEpyVw866o2CNSOQcDIiVntDPhaQgSOPQ6H7HhyKSim
	WTy6KsMMLl5lm+Jf6NfFT89dF56mXPt9iv9EvZEV5Pz9SUFIaVde6xEpyI4oA6a3Sto
	lSwlTO/MsuFjMk+NQP0fc9P3JYrP7AJlNtZtO1zQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647592284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fZeE6dBMwHqRLXEK3qFbxsmHovpWOdoPGIwDc4V+CxU=;
	b=i9xEXd+/r13bPP/0ZEAQxAd8R6pdDdffxSTHVcryszFXcBXNusCH046Q2vTkB2y4
	fdiVX2iNXV8wqBhWjSBcfQ5CzVecbz5fWu6MNYEFG3iiWYS74ByPj7cBkmPt/lwTkfH
	dJWopWrdfT50jxa0rnhugyYS/qR3q2+LSd0nBJQU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c27222b-99a9fd8d-28dd-4a21-8b03-8c586a67e3b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89f5ca29febd5dd35cd9c1254165aea6a4e1dd26ccaff1a168836e97e9cb1bb8
Date: Fri, 18 Mar 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647592284
