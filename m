Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A6B2564
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 09:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650621418;
	h=To:Subject:From:Message-Id:Date;
	bh=GOsAb0cdF/ZLWOm92RuVct0wjKpiHVNwvFt/V08RncU=;
	b=bAS7zqhDg2QB0bgeOD9bANYecsa6Nm60hKSauUOo+937UZE3px6hwnd70hkvEpMC
	zt2S1rF+kxUgniBnPYnsvNsonllmvueipsZQCt3aN8wKN+8itGF+ZbXTxDLnX1fTD0f
	d7s3f1JTP7fkbjOVZ+6uOI0kE+vO+4WrRGodCb0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650621418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GOsAb0cdF/ZLWOm92RuVct0wjKpiHVNwvFt/V08RncU=;
	b=KpYVvTGsoXjvzx4v0vylxLGMsg/EClnH9QBjOJ63UZYfdbK5IL/lMloTgh5VLIfd
	r463hlqQiWu8mWuvX3BLIPAHCU6tlrnvPUw+LaUJnwUjRDJTFnL7Mn5dkJHWKhuRKHs
	sxXGbMA/NLDyN3bsMOC+Wkk+vuRplKkL2rN7nuqw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018050b40b2c-df71b7d9-291f-4a84-8089-04f842a555cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 845dc51341fed6542c4b846eacd4909770381b0cf2729a0c246c10c356262bb5
Date: Fri, 22 Apr 2022 09:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650621418
