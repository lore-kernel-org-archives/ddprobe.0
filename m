Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083317C
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646832084;
	h=To:Subject:From:Message-Id:Date;
	bh=ly2Q6mPxONT+ic0byAwPgBTQkTbbJouc0wYeupZWJBc=;
	b=hZtR+Cu31bDztdG5Razgh6Q3ZB+AU6bRBEcpt9ruO7KF7hjM1XzlWwxvvu/qrdrO
	ivI1hvRblMdDSIeR6raagdDfIaU9lIEHpuSDtsL3EYHLU2XX2o+vbQQaR3HPkIxDOhf
	JMPMOwLko6c2AxHaoWojqNMgWXNvAxLkk4nRdkTw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646832084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ly2Q6mPxONT+ic0byAwPgBTQkTbbJouc0wYeupZWJBc=;
	b=G7biiALYukMDtky4AhyMl1KqkQTL2V8uojq8kEY6O0anGGUGVAUv3QtUWVCa8NX0
	dnUa0Br+BpOeZPt9nMZeeqEXlOHKH5+J7lc76F7YzoB17QK3xNfXCwT/VWYc0wWXnxw
	F2bKQmw1aD99IXJC/Sh4HxSYLmIRdkRKZpP1VR8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6ed76748-737cd492-e5f0-4b6e-a05e-5ad4dc019150-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 464bbcdf082019cfa802b690da78050e316563f862131cea8a37ee98d6210baa
Date: Wed, 9 Mar 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646832084
