Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624582560
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 15:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650987538;
	h=To:Subject:From:Message-Id:Date;
	bh=UfiDOpTI5ziu1FqCGsBqNDordk1ZBStGw7kEJemH5Ds=;
	b=O96vZ5kFB8aiEmhXIyigfcAULja7dDaIaeJKu4cgYfW0XWv81EEodqT5kXbwdrQk
	QjSuzacqp2O9nK+fgBGUlsdRAv3g+P+aAuBt8bCUxBn25K9Vl4qlaeBOIbJD9+c3gGV
	QDv1ahW2pI1rVrSens8CpLfz1oaRksTVePxjwUWE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650987538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UfiDOpTI5ziu1FqCGsBqNDordk1ZBStGw7kEJemH5Ds=;
	b=iEMHmZrGU8Oc0Oz4eoEP8xsoAX/zXqHScv7aPTZo5wyA1cCwsr3kB2ewYeBuZ/Q2
	q3bd/vCSUB/HBpUPCACX5D14TVkVN1F9jHlOdCsfDhDKn10LTZBeOILTyDPKA5CSuNp
	6akNd1G0Y+dY3uAWBSA8FHV2UxsT+jVKr+mJtW9o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180668697d3-4b4a18de-d684-46f1-aec5-0e3f6be4575a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65b6f4cbe097c5a4d2593711f866693cdd6a3a18c3e55b9a4fa125611b7c8737
Date: Tue, 26 Apr 2022 15:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650987538
