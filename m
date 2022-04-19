Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753A37A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 14:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650377518;
	h=To:Subject:From:Message-Id:Date;
	bh=l1j7N1czsfjt5yb8On1ZQDK4s0vNQRlkJS0wPdRzBpA=;
	b=fnF0DiH21FVgkdD9ClhCgux8KAgeMJRaTnb0QX4kto5YcZ6j+x9BiTaEB8J1Dsan
	PtPk1eZ1b4C9bIlDqt9GMGEnATIjIE+6sQ3OjZQC7pWEhILJ7VYWPJdrzrNtMqZKyev
	N2aVpTt2qg1ouORX8lyOMs0QbSf7G2WlJTWrMatc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650377518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l1j7N1czsfjt5yb8On1ZQDK4s0vNQRlkJS0wPdRzBpA=;
	b=JEhbVFxe24FqLMrbGbJ+XlXUNckg7lg/vKYwY8Ar6vbwEfjhfhYxMSEeXO5oPMY8
	5EbP5Azh1Bx/VMigcB2q9MpN7lPyMhtqsvshKpfhb2A4ic/2S40S0HfWdKT8nKd9qLP
	yI6AjGT3Gi4FFihGvxDq0UFEgVUruxal6prg5asY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180422a6cde-16923c21-b8bd-4f67-83bc-c3761d3d5d88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e5dd1268218258d5b8e9dd2b5846d214cdafb49aeadecdfa98154fa2ee42c4b
Date: Tue, 19 Apr 2022 14:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650377518
