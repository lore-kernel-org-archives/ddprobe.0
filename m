Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A909317E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647695785;
	h=To:Subject:From:Message-Id:Date;
	bh=xkdlziH+Vg86nJHcShkeU+qUgwZWXObW6QjA/LWIx1g=;
	b=D4SShoYePb825XAHN+7AnimvCxSEFyDrCZs482nNSNX+Dsifw13fg8ikUzcvoW8m
	pAP8BTKSm4+SM1Og1sKqWokzw5aIfwOcemqQ91wRTD+g4RcYsG4M8UOaODFrWnMjkfv
	j8JAhKO8Fk2WPmMNrA9K2S4l8f25sdGylu2EUTrk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647695785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xkdlziH+Vg86nJHcShkeU+qUgwZWXObW6QjA/LWIx1g=;
	b=RKEHCm2a4oX/bVTDH9SMJZx93RcgmgEFjGKGEVLQ3Hd82N13yzjKdv9A6gZMwCM8
	x9POI1rXGqw9R3MfNDs++TUzbyZueO2aRS1wApJq4rqjfT659+tezXLoptKMbofilnC
	IGY+fMVw0Q2knOQz3f+P+LvYN1jzMy5E6P624SZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2526b65-ccafdd20-a0e9-40aa-9a16-a4a8b419bf10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5981c213d37c4da1d2d4cde69056490521f2e9e86eb75be329a51b5bbf20eaaf
Date: Sat, 19 Mar 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647695784
