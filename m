Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAD723D4
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 09:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651398058;
	h=To:Subject:From:Message-Id:Date;
	bh=YeuZoHExeHP+lj9RBubwn6aV4otO0dWztmpN6nlGx3o=;
	b=NNLECKH6pv2w2JS0YjoSqBnUgKRFj/uWn3hxohxEz9GrcCTp2uf/GSBSVg9Bv/Ej
	QTjrdZbkygWcViFMf8moRtnmxcym/E9mEujmuhhF1xzSz+FU5qZpBDJGX+joAQinWpW
	7VpgSo8lhN419rekfEQEReeSQtirP+sEqtcXvs60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651398058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YeuZoHExeHP+lj9RBubwn6aV4otO0dWztmpN6nlGx3o=;
	b=Pmu0jRkFCcf9lwTkcr4GyNMcuH/4Y563OrQ5fWKkT3fbKgjsognsXFWmSNZSAeHE
	K+xxLVLJiFcos8LpOTyNqBvCUsVV0eXFGUCKuRRmudpDYlo7e1Cibii/1f1JriExMuH
	tTYsGnK2aGs5TtxmckKHlVMWIEzG/GGa4IGYAjS8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807efea149-7fea66b4-d5de-458e-b100-9b758e92d34f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7eff036b4a3d0f45fe90488852ccfbf55ad55858f21d4af177a10a208ad766e
Date: Sun, 1 May 2022 09:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651398058
