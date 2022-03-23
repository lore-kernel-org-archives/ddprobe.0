Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17581B72
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 14:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648047385;
	h=To:Subject:From:Message-Id:Date;
	bh=MRrvZt/jrt+aoC5HBtfcd4WwLpI+vALILddH1GHhpb0=;
	b=ZR1u1eor9UaV/rXofcX8UgxcmboxrkboQyaFA2uPlrT25bDrC7Gkgqon9Q0uiaUa
	7apYtHojPNdPA1zEVhn0egE6Un54r+G4/55QWHtZD9Maf79YTCd42i4Zcxzu2loHvLg
	Lp69SKj20Yk1v5uLGJbqrBYvu/g9XASRSTstNfTE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648047385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MRrvZt/jrt+aoC5HBtfcd4WwLpI+vALILddH1GHhpb0=;
	b=FTQNk7DpiBEgCcgEWueAs5TmvpDbPuUhIcJKq5IKuJq3sE7Xs4uU4k5OqhasXbBc
	8YtrOJRVoj2Pjm8aC6QxKRr+k8D69SkeL8ixYmoLSI95QcBrC9gCZ3IWkJLDxiC6c4m
	gBLD2tz6Kzd2YSrCP+XUFsGM7ScOJnpsvIGoG9lw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb74768c6-18ff245f-7de0-4453-b115-10c78a87dc84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48b741b83b55f9f667b68ec25aefad52cb7294cb32e12493aee5d5bc6b3d7824
Date: Wed, 23 Mar 2022 14:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648047384
