Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AF47C
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 12:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648901518;
	h=To:Subject:From:Message-Id:Date;
	bh=9eQsKY+w/hhcdAlHo+jzXGlDyFB9NMDfNIlva3RdAOI=;
	b=Ki0hIKSX6KOlBfpmWFo7aJGILSdW+CKzKccbK0l9DwK120i++VXV5HGCrk+2mE43
	JI0ew8HZzPh65KkuOnHqFh6ax/vV0ibedwFSGBg507Tf3EOaSO2OhTSi75H1Vp29vli
	CCmqLgd7k/z2evE254ShcctEnhiqyDGrLEE70WG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648901518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9eQsKY+w/hhcdAlHo+jzXGlDyFB9NMDfNIlva3RdAOI=;
	b=EwYoQRxnag3nhS/DVQaIlY1c7PLQlQoglrDnlVF6EOOMhoElUK74tmhKo4Pudd+e
	K9WjRLcMvbcYFBuVb9IdZvfrLcf+Zn/fBsbhkWUd0AwqcREl+NkvxZI7olQ/lizAyN2
	DAAJ3fio9rEn4E3FZ+OfpH6yg7cVY2rNQbcpnExg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fea3073ae-e3c05fa6-b6d3-4b9f-8455-84d14052aa0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 917f56546c241a0cc8fdaf1605d829117f54a272b19aa8ec297ed2c8a6495453
Date: Sat, 2 Apr 2022 12:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648901518
