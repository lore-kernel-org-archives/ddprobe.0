Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3F120E7
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660983052;
	h=To:Subject:From:Message-Id:Date;
	bh=KoF+pa+IUat1qpVff7AAGQ1IZvbnP2hk/p5lTbOMuXY=;
	b=KMuyYb0cEPcFXePdy9lAzKeY6EHY0kVgPddTLwuAP6hKMuyX26ZBbepyY3CTSfGB
	WShsx92iatIJMlKaOPACj4ZdgI5HWycScesYlAsBSAU5DQz0UzHiW9u6+7sP2vRf0Qv
	stdxHON2pphbt3/2FQQ/0ad/P5EzAOcO82inVIos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660983052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KoF+pa+IUat1qpVff7AAGQ1IZvbnP2hk/p5lTbOMuXY=;
	b=dc3xui3K9FUpVuqaoFEQjSQOMctPwubhdMjv5NoINKd63Cm9thbUrZf50z/wWtLG
	ZRG9HtT6orO0dJV1DoATxbOqMFiJQ6TWPMiTvI7X3zEYkGv2hteMlFPyfIxnk2G0gkC
	YIQOoa78oh1ymhv5k0YNtUzC+bIieMYHPmWY3ZW4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ba4e090f-734c9114-ed58-4ecf-8558-7559a6068189-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a76f700035db77968c95339c15db1ac76bacd9f11d4130cfd804de8dde60c26f
Date: Sat, 20 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660983052
