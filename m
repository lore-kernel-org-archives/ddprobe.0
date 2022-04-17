Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184527B
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 07:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650180478;
	h=To:Subject:From:Message-Id:Date;
	bh=dsCsr+f3NSybtbjb9nV50dO2keUwg7bZG2IrO14GAOM=;
	b=dAkZa38BhR7drJdQXWI+K/Y3oC7ZPh1LLw3c4im30AeC1mvsqUIxJp+fRYN/S2u8
	zC9l39lx5iwcgNTSSyMhMGoSI3kz3tktGuUmSfAOceZx+7GyFHnZueTzZ4Q0m7a+Kg/
	tvHgqhzLrShlVEN94hkRmpi0ifx9tQ3j+8JVNTh0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650180478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dsCsr+f3NSybtbjb9nV50dO2keUwg7bZG2IrO14GAOM=;
	b=e9V1ojJCFycDOdjerVR84nI9EjOoaN1F1MoRzxJOuRU1zylKgGf0fQy6Xvg6UuDI
	AzT1OszfR/ehNUTaojxXE5nZhHQtUeVp0TYN6KosXVmhsdyDTUnTfVuVL/VKC4MV/0Z
	AmQSxNWe4QDQdPTp/zrKDo4mOADsWEK2llFopZ8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180366bd552-77405809-f7c7-40a7-a6f4-b0d987b86f7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27bc8f83f5024bf7b12fff7d7ceb41026f3061714218778b06929abfe724e699
Date: Sun, 17 Apr 2022 07:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650180478
