Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDD57ED
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 04:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647921685;
	h=To:Subject:From:Message-Id:Date;
	bh=vLDTdLFb1FpAV2TlcxUCiD/Iv62R/cOH+6DL5GhN4bg=;
	b=gohB3rMiS1r7km800yckyz2gy6xOYZKFMuRz/nGd/V4XHppsXIhwXM8xZVy8yyhr
	w12TkrrdpZC8/zTWbFwsJF9RzXMeQUdu5SK7mfRViry91468gJOEcUUBJS0qOp52ct8
	Y0xYy2AEKhRbVbHfNn/rueXSpqQe6sLt3R9sB8o8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647921685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vLDTdLFb1FpAV2TlcxUCiD/Iv62R/cOH+6DL5GhN4bg=;
	b=iKUTrFAq1GAE1GBYvLexfRlj76Xsx3nAwF58b5c0G1eyMO6DZgV1KzeeBFOcZbqE
	LhGCsi8WXVRSP5u2eRHtncfe6RCB50ISwKFB1VNTZC9tLokaIvP3EdiAcbLtUPEmUB5
	MoZxo3ru0tuGS1A5gCKQOi3+dzyieTZlWIKuA1v4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fafc960f1-d7acd440-d7d2-44bf-9277-1f3c06ed5473-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b867da2387d37e2b0b08c23bc83ba420081a846cad50c88cfcce93099f15e82
Date: Tue, 22 Mar 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647921684
