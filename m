Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41FE7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 08:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656406012;
	h=To:Subject:From:Message-Id:Date;
	bh=BgbtPuADeXaACMlxDE+qn5CVuWxwIIsAfVGzOJ4SUNA=;
	b=jq+1OgNDu6bA5RiDP1U4p8lOEo4KjZb24dp+GixtrWf313XnyvNUSCbmFkZL3ohT
	pZif/5X7GQQ1QUfMfdQK5JBufWEQ5JxeeUCslqEzMU1xGCzQ1sXzEseFwCifpdHWbs/
	6PybBJ2LsD+im0Who3+MP2kQXal1suEv4UajUR0o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656406012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BgbtPuADeXaACMlxDE+qn5CVuWxwIIsAfVGzOJ4SUNA=;
	b=Q+Rc/rmQKtSbiVcu9IjSRk/RHD3G8Fxxi2pyy4sPgIVc44plQQznPp5Lg6HJqO0E
	bkVilTNHQoUffyzTfweTXk+YItcAeHd1EYZN86mapEO+WORV3ldTjUaFGNAHtkjmV0C
	BzE+ZheOeyuqeCxR2pFoK+Mm4M7xaANAinKSEH9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a97df157-6a3846ac-64bf-48ec-bf5a-86ebf0a1bc41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df3fe9bd4fa5d1818ab8e7dde0ba71e792ae5ee6b255797e6f875010d294b9ff
Date: Tue, 28 Jun 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656406012
