Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD6B10ED
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 03:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650424438;
	h=To:Subject:From:Message-Id:Date;
	bh=+dcnsHyxp3xwV3pfqtJ9iMYr0lwUbTvzQ4SFdOfps+Y=;
	b=TFC0MpP8zNyx3xPA+Nmt0wD+lYJYsCT2hbU8MgHa33Ab7CJ/amuVBDF19epIB6Lf
	/OorK90mL0Jj05EfFX0rpmZczP456qtBdYwtM1Gmyxm2gJQ8/UWTqjkvHiIsnP7JULw
	w5NdziXNkAWtHZzngF8t1QWag9Fzc+9vb07N65Xo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650424438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+dcnsHyxp3xwV3pfqtJ9iMYr0lwUbTvzQ4SFdOfps+Y=;
	b=ScYLd2s6UAxP6f+WgGY5Ottt8CCD/0r/g0DqjrPhwnTKNddJqxrAAHYiJmgRRcAQ
	aqspgSekl/p7otCtURcK6JgWsw46ivkaTMIvpB7hy/n021nSsSJf40JjdCae1rO2GD8
	KINWQc8iZGQRTAqN1poffGnbV3UJ7HXPe9Z9ZZI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018044f65e0d-d2f138c3-9ea1-42a2-ac3d-33059f886e15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c7e42686d93803994ea3e9c81eaff667c56f20d4bb2ef47f3cbecc889d0912b
Date: Wed, 20 Apr 2022 03:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650424438
