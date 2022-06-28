Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593B67A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 02:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656383212;
	h=To:Subject:From:Message-Id:Date;
	bh=8lbnXhAcjzxslB0mz4R9UW+mPxce4601Cdv/vCYC57Q=;
	b=MC+RCFds0O0E3FUUXhX1L+vfp51/iCJ2nbQpDNoXqdUA5mxanbRTGOlTeyeZps/L
	6OwnVpeAe9EmHTkkW3gxuNCSr9QSdz81p9EnNN2aaOIlj7uCchTDPWoUjnylx878CNr
	Z+HBUxwo/Sndn0nBt1Vl5MQl/JZ759KRb/cQkSV0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656383212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8lbnXhAcjzxslB0mz4R9UW+mPxce4601Cdv/vCYC57Q=;
	b=LkzQoo4MkgJfws+7zy+F3RmGLx1IPMUrohiBp0UpXA1RVk12o2P98H1UMSd/J/cy
	4VaYqrN8dF3y8v43GxreNaJuFDcBHjOGK2/rcZ/tT3QRQYyY4pAucvEgc4dQ1eV8FIk
	9LKQhFf/NXMzpaYaI5DkhlVy0pE6gZAd+ai7yVbg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a8220ae8-55df41a1-d527-4e42-b4db-ce9fc76d30a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bbcb71abfd12298e384ff5da562f220de8de3d2f63943ff7fe31c27954abfd7
Date: Tue, 28 Jun 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656383212
