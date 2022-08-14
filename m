Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629197E0
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660459252;
	h=To:Subject:From:Message-Id:Date;
	bh=6KQbjPdVIPRurNQJK2o15jGu3jRR6EzFdyd3FYxHRWE=;
	b=DPOnFONNzcQ65uRNFOiZdrtL2IkehSMFCL8G2Cv24CNbcTjH3mu/OLgbEDLqF6fK
	8F6TTKhCCPhmjsYkURlFv2JfRaAZ2BdY8wvkdWKL888NfD95UB9xCopf5w0DwxgNqRs
	75gudfVOlgh+v37ZZjRCsJ54JCO2Nb+XX44JAE2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660459252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6KQbjPdVIPRurNQJK2o15jGu3jRR6EzFdyd3FYxHRWE=;
	b=SYbj6pLP66I+LHNA5VIRXZiaauOYGuK5UdQ03gMgvnleGtKhkJ9mA0/5C/Xdz2Vj
	yWpHRjFnjRqnT7mnOcOwzNoTT7RM9sjsz7L0c1JvwT86Ns/e2F3mkVmgfVnvsWLR01L
	B+CZ68Iz5LS1nJsK14x5w0R2dfMFfReZudh9A2/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829b157b40-70d4d39e-66ad-4e59-bfac-a43483afa830-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30bbb4274eb7a7678357a883a6024c74260530bdf36eb4053b705d065a407e5e
Date: Sun, 14 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660459252
