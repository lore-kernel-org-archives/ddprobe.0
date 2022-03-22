Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E646CEC8
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 17:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647968785;
	h=To:Subject:From:Message-Id:Date;
	bh=kQmVGQJZ7TKYdtHw6xHg+8If/1lOYDnF/wwzhsd75nE=;
	b=R20r8qarjalAiRhBY7sI/gTtPv0bpV5275H0KHHbuy1/70C8rIZM+xYpoZaKJmzr
	dEMajpCtIIBRKyAcEgqSUWSBfPmQyYtSCuML/K+Tx0N6MxNC9J67gekF8ndmvEA/N3+
	nkRXu3+RPGShU0PPEkrQPYE+RnVMX6YVaVI72U6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647968785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kQmVGQJZ7TKYdtHw6xHg+8If/1lOYDnF/wwzhsd75nE=;
	b=jN8sWd9HnJnfU3lcdD3ICT/wvHggYIR/Y60Wjy0R2dwQVNRmFD1ZFiQt/ZCJ8Dio
	au6iKDr0LrrOfUj1zJMose8vNYid3trBFXz3qQ9xNkL+H2XS94lC/U3CGcj1GDRiy9j
	+f9eBHvsOMXcnU1at8L3KvT3szPz/s911EelFeFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb29811d4-24105f90-de4b-4333-8f48-7c374744183b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9ee9e6c19be8289836b6d4decc24ec6ce8a501202591c43621dff5d012ce298
Date: Tue, 22 Mar 2022 17:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647968784
