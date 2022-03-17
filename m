Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42BE7A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647500785;
	h=To:Subject:From:Message-Id:Date;
	bh=rwRTsZLrABISVXMxkDpcqqEWJ+2eYERtcarY6aUK/PE=;
	b=Mk4g/xdHrbnXm6vvlN2nW8/dsKagYyAcWI7IQiK9RzLGdb0MbtfaK1xwfJdAJinc
	MsFELAww3Ln6sBUK+YIUlQkF85iqGIpSMamTooUv/gABjfmJIWEO51YTvwz113JWr2r
	CvGyoHsb/trbgyRp3uzkn5ZV2F5Ge9BYtQyncIzM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647500785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rwRTsZLrABISVXMxkDpcqqEWJ+2eYERtcarY6aUK/PE=;
	b=J2WmwcQF35/NTzmlhRUI3hXLKokZBl4BGDxjL0cWzAjGtrYmDCqgE8WDTs0hpXXk
	LEaBLrenkEjrWBt/mPuf01obI96LLIDQlfBTbiffwouAIszpCGFkbXV/GOSBCjBg/zD
	Cvq25fAUXtO6BhZmRlZwq9eXd7DZots6gDDaAuKo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f96b2f47c-0e8fd268-2b3a-429d-ae6f-eb956a2b4827-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba1e782704344227084f506e0747f9b86a9d0291a1f9420b46969368b98425d4
Date: Thu, 17 Mar 2022 07:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647500784
