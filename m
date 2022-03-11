Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FC633E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647012084;
	h=To:Subject:From:Message-Id:Date;
	bh=fwdhTBd2y16sNOREEGRmpkpsPjxqECLoM2hEWREJNxQ=;
	b=DRW1mabH4z5WaexoaCenoseZkRARPWO9PaU+0gMLcfHvoMYZJaqJQytvvrfFlwoI
	5gTChXmCK8q8hObWII50sCpqlUknN19WjlyoIJBJGEVNfKeHapt/yZ0ZB4mlq8Saumy
	dAYsjGQtcmSC45ySTSrjq3W8ODIT3H3UzGV4BmNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647012084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fwdhTBd2y16sNOREEGRmpkpsPjxqECLoM2hEWREJNxQ=;
	b=WDuXHgek9uPzim5e9dKud1I3EG0lW4W9ZeYOuvoIK4Mdmm2I4rum/FVVLlClVQnq
	2+f3HXkxH+PzTmv639lrxbh18PcPud4sVtkraj62xfkUog/QZ8NPINfphE7Kt3K7WNR
	gnmSoUpSelWVf0wA1FDcPKW9qVaZkEdlH6vZaozc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7991fbed-95e7d9c9-09c3-47a0-a5cb-23ede3d00f5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e4e814e39d6085e34d805eb7acfcc482d3e78ae04a109e4dd13296de56c619f
Date: Fri, 11 Mar 2022 15:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647012084
