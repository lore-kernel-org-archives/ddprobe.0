Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E18B639
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 13:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650202258;
	h=To:Subject:From:Message-Id:Date;
	bh=7Ui2D1ncLIRqkxBt9aP5eY74ewUK/MIPVZSwOBFGM3I=;
	b=M/H/uLw9/b7DkLEwfEfJiP+6yauMxx5iCCBHGtEeAFTnU+HQMsr+LBBYHSzmFFEH
	aZF78qgsWOQn396H6xmX7cKCKcD/78DPok085VgSfURnVa7M82FJlDFyYwea344qQw6
	ULes7kj0aNTSpF2JiG8VDum4ZESmzcjfcOMSt5Uk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650202258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Ui2D1ncLIRqkxBt9aP5eY74ewUK/MIPVZSwOBFGM3I=;
	b=TISgN/h5jvSHUie8GhPtJaF9t+TloiQzgLIorBDcgSQjVUN051FtvkW/ZwIx2k/Q
	Bp3QEn7f49fecF5YHLGdAoFl3EhTLzbS1zWM5AJMz88yRtlwLnAbgpa2buum4ByxCYO
	ycPAea625CFm1TY/N90X1DbPYPzdolNgRn1eZeb8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018037b82b98-17edba4e-2722-4ad3-b693-bf18101644d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7558626948ac6b2dd66cfbf103c54ce28acd0da99e2a8e7386a2f93dd4c1e307
Date: Sun, 17 Apr 2022 13:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650202258
