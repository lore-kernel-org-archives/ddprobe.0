Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B7A2F30
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647541885;
	h=To:Subject:From:Message-Id:Date;
	bh=gfdND1Aq3VDIbbt+mNBOt37jPiV3cCUSnSEYQJbbNkU=;
	b=JFpR64/qaY+ZhPZiXsoGgIB1v/HJVSYZD4BmvSUX0Ply4WgBWUsAiRuyA5cANfjG
	bwpnfEcnJQbHREty2yMmdBOkV+9+QcoIouWy/kmYUO6BCXEfO/4K32DRvOG9HFOCxxk
	PSXyJf5V7IOiwSAg1kN2ydBhb6JgjS6MW6D4K2VI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647541885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gfdND1Aq3VDIbbt+mNBOt37jPiV3cCUSnSEYQJbbNkU=;
	b=OWq1Nt95HkG//NJGn3yBFbRw8WfZQ0nxH7bkiyUlfqBOVccRVvBMe44rJaGYyDks
	bcYilKWPn1Ff63xTegE5xLCmH2NgrwDnM1lx9RkuNuFqG9lp30DfIvYrLCgkx6OsjZR
	RmlF/d3Bc7/69Llab4rs9G9uO6Uaco7y5eTL5XaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f99261798-e4987444-94e8-4a34-858a-e562e83f1830-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a35e026bdd7a7c5f02f4ccd5d7e7cb3696aadb90481f5c16b9cbcd7259ea810
Date: Thu, 17 Mar 2022 18:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647541884
