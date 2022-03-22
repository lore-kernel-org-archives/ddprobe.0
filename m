Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78817C6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647962785;
	h=To:Subject:From:Message-Id:Date;
	bh=IOuFAqDl98PZukqonUpKiYCPjE7p0DuXBG6PO5sFpi0=;
	b=f6rS7PMSZoto1VTmRvrtHSW1pkYSin7N0K/ndIo4XKoR+5snLT4KsCJcP+rcDIB9
	EkUb/5a5KQe0K5Syz0MrZNaTEWgoOfVovJAzMyEfEeDMOQjlOYmdY1pXOidEp9ks78k
	0h9Y1Ivcq8s9LGx17fW2zLIKhcC5DpoBajYR73oA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647962785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IOuFAqDl98PZukqonUpKiYCPjE7p0DuXBG6PO5sFpi0=;
	b=h8cHuIemwsB+53fe6IEtLyZx/YHsxO5qDTLTriDfQ1Na46GxIJ6N+OIS8fdhJQcO
	8/Pu5DFkr9EoQ8+fypE3kGiXVyaqBLL/Dn74BQltGAhGa6L9jJHleupaabC5V13R5Ug
	QWOMFMrVvnSDVQwZbEBMpdhA2DhQpiFYlFyysQyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb23c83f8-c6b058e5-c4c1-4e69-88b9-9b2acaac6d93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68dd9bdd92ca1106c1e6b2827ac5201ecff8b8d0e9c8881462d26223460d07b5
Date: Tue, 22 Mar 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647962784
