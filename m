Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC80E46B7
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 838FAC433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673824287;
	bh=EIxTL6VouqEkSTmkGOvnztdli3UFgfvK51V0wVr2wg0=;
	h=To:Subject:From:Date:From;
	b=JfQmUFfh/8jXThM9bl5HL2JRURgrXLgU06n0YEOukh+SSSdxXnF9UfK+wzGpheGTW
	 ej/WVv31B4zGMr7ZWIqmezdgHijVnPInx5ygfTV87mwUSCM11SfCJwdZD00+62Xtxk
	 xEmPZQZe7USfDZZc35tq4NpDRpga5FJO2T+97CJXCvFEUfJJ8SEr/JdHp5ymlpw3Ts
	 X25JMlquFR4J+oC28Wj+dbC9HtQ8NkQ5fLv9CpHd2u+PlowQHzYfKLjN8/1XyvRIl1
	 PRNuQMa4ulZDAZIdHE8OXvtMtg1bPvFPwPegNgjUNcOFd18r16pPR5NqmNiKenQUl4
	 8RWivlyKjZE8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64750C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167382428738.23460.14546846789513163479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a94de923b3b0d5b3611cc754721c964668adf18937f427b124605ac9cc4992d
Date: Sun, 15 Jan 2023 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673824287
