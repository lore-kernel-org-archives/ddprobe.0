Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1577A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 10:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647252685;
	h=To:Subject:From:Message-Id:Date;
	bh=OXXH4SRZdUy3jBD/QD05R1bPaMnfLLXIlRy518f6GAo=;
	b=lzgqI1kXSKIqObigyqPe2QS1iuUVfhooEcZbtxfmhTKCEcBVg9b6ujfeLRG0I1dQ
	EmJGzy9oLFthU5IWfSBfcfN6y9nTx0l56BVaD4N+K/LH+iRO639d6g9gsfS9JovQYSx
	PJN2aYeE107M125sqPHiy1CAXx7DTrEbZcH0F4e8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647252685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OXXH4SRZdUy3jBD/QD05R1bPaMnfLLXIlRy518f6GAo=;
	b=DBGHJLg8MtGeOpVUBtxWMxM2EmMSc2pqFBB7rDaqQQ/V1WsFV961VKMeCCDvGUqg
	HhWgkwNZ3crM77BO47p9O8KrQGkLr7ydbqJ5FG7/x78xaSt4XGubsoP21aQoOp2/T2Z
	6Dzuf3zACpwLx4JyWwrIkSzrDT1W6/QR8hsj9M4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f87e94019-ff2b6949-9185-4c82-a5d0-0c9ceee96b61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f87213bc7e6fb33bdd01362b456eaccdb1c5832d883317714860422f7cc9051
Date: Mon, 14 Mar 2022 10:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647252684
