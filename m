Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAFB7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 12:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654950779;
	h=To:Subject:From:Message-Id:Date;
	bh=K1yHjrH7l+lXxBk7nSk2bJavrJWawXDf1D97a6fzICo=;
	b=cLcUrK/YgR6Nlp7SDLNn7a24jDVDBt29/jH8JOakmzhykaLYeWEYM/GVBM3nBO0+
	bBuAHieywLRh4JhNrx/pyTrxc/GYwcvXg7FDEmd2oYd6hU7vfIK+qzi1o2CQCcohs/r
	S2cgaEjEea+dfnWH2w6Yy8EfA3dbsFs44rdL/EVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654950779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K1yHjrH7l+lXxBk7nSk2bJavrJWawXDf1D97a6fzICo=;
	b=FX5SHS0VdoPXkdxI/W4oR7ujE5thVWpQ2njOD3XDw8zDcjxAyoAGMJbZUHEW+PXi
	E8Y0oMbu7LTlp/8NqkJqM3zd0vRsF7zYmHSZWtZxoBDlsJ+awT35WkZsVYRB7NbrEnY
	NonZEVpXxB9FHf0iguJkskd1JoCy6H+aXKfd5FzQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018152c0d951-6085b189-178e-431d-890d-b0240d17491f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fb5e67e9794fbfac1dee1f348b9fae2f1f7a7cd409c7d794228aef45a6b7c5d
Date: Sat, 11 Jun 2022 12:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654950779
