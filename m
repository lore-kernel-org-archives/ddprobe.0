Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6500B3222
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645997484;
	h=To:Subject:From:Message-Id:Date;
	bh=HWOXM5ZA5vtSPdwotyeQcyXHaeJdMC2PCRcFuR0CCWA=;
	b=mKBqYR2LCN9/aTpBS1q/pCLawUowAbCloaSEYqEkWXnZLFR4RlkwKCtXWZvbmbJ6
	jF6Q8X+xxwKDNdYwqwuFHkyZizg33lYNy1t/LeSwSapw/dI76SFySUuQmhg4Y4Za17j
	Vo7+v/3eIxKjjCsvrbdtoOGNuaD3krTA9MMTg+6M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645997484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HWOXM5ZA5vtSPdwotyeQcyXHaeJdMC2PCRcFuR0CCWA=;
	b=FwanUeCrUY6T83ihdExPTnBQyNIhhoT3IdOus/3YkvYmCkj2xdmFERzQNsRsZJZb
	c7qSpOB6VcpUJ4yJ2xeRwTnyhuzqcn01GaDuQPHsOizR9CDDjozYJV6loV8DcyQiIwV
	ViNwl0ecuHQ5WjAdea2iuk3vBCGUT15kkaIVnAmI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d186af0-41c0c620-d6c3-4262-a8d9-eab8eeb18f6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c2e1de7357fb1aa90ea09ebde944120a658b9bc34b893a5a2a3cd746764edf5
Date: Sun, 27 Feb 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645997484
