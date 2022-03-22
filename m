Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6942C6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647965485;
	h=To:Subject:From:Message-Id:Date;
	bh=PDwxSYH1uDvFMP8leil02Ev7C0vOAmUxAwu75UmyK9M=;
	b=O+YjGCadNbEVzkbeDpZds6TOjsaKg8+XPPxyTJZ+s2X6y0a6Ed59UOAch0RfVd64
	tFVQH5grdKoAGXkELq6vBCvFd2+rC8LZYlhFL5mBaPmQJYhv5NnRA6PrkbfItfkYKfv
	pQMhLW89Yy0UjTjsgbsgD3b8TjWrHPptXx2Alhxg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647965485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PDwxSYH1uDvFMP8leil02Ev7C0vOAmUxAwu75UmyK9M=;
	b=ITHgSHYvvFkc5NsNInhv6CvJtqSYA6sRYfxmotEz3Y7VE0LyRiqGV6uql1EeXh/t
	KIsz2S7AhzJzVg7FX3/pGm1rPNAnRZn9Qgd4ZsrPdJNvhmMrx00pJkSfB5Tq4ZmHf+x
	WnSYUDRH+PsdQl4VXA1avyJtNjiq593OHCJ5/CV4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb265b736-f239a6e0-be55-4b7e-aaf1-ab09e0910d74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8914a046321fdd0893ac04b97c4451102e01b50ce0c71a8bd4c1a9f32c8a3ca0
Date: Tue, 22 Mar 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647965484
