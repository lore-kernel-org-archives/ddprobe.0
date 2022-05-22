Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FF9257E
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 12:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653223499;
	h=To:Subject:From:Message-Id:Date;
	bh=mpxMrpa/2dMrg4GDQasmAqu+SyxpfKs8jz+bX5dem0I=;
	b=gNYw7VUrYbhsQ7JmX8EdSeXK/pIm0DsVwdH9Xzet6gwZ108JyY5kal6M32ZKfOpa
	5CNJb6lXSaz9SuTANQ1OtezZpLMcMCq9NDbgGUQeZ7SYQyAezSFdMchbIeXOnWOCEmd
	mI8hNraq6I/N6Ldlb9lqOz6pNStJcaDnZdyZx3gM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653223499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mpxMrpa/2dMrg4GDQasmAqu+SyxpfKs8jz+bX5dem0I=;
	b=CasXI0v7xodap5zZ0RMUbcr6KECP1j/BxPV10aeQFnqea97B/4m5Srt5MrIhu7c6
	oOlQwjjPvvu5L/s4b/g7F9692+CCeebbcb6P0r6reDd+vKZr8vWc8VKyOsFnDF5F6Pk
	67GuK16rpm9opQrVlMEeQFS0Vk0SV7spe9qIhiwg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ebcca5cd-bb274092-8be3-4230-b848-e8f36fcc458c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f2c9703ea46ff52c229f0b85a36db82aeecca124c6af052daed31d16c106ec8
Date: Sun, 22 May 2022 12:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653223499
