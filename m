Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933DA7F
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 06:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651473059;
	h=To:Subject:From:Message-Id:Date;
	bh=d1BTjsfrFjHMus8XPlmEZfWU52OPciNB8Ldc1yxHj2g=;
	b=MAHKmoI5c7SJDmgGDznancug6/or+cmZozNidHNKYlxUmyXDTs86CsghBeHeurlO
	xXimjCgFxsS83VvD0CdiR9AfJ0fk89O3FCWHGar5TNKVyAR0awRk5PdnECEz9RaoUm5
	H80vmwSpDa4ziBefrlNJzmg2KkFhdgV+cUCf8y4c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651473059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d1BTjsfrFjHMus8XPlmEZfWU52OPciNB8Ldc1yxHj2g=;
	b=YZMu+DK7DJj8+qiAiw8HfZKHatXLf+k9+U/WwH8j2DAvf4g/4muD6B3Ac0JiJU3w
	a4MGaDr0xV2xSz7ekQ4cTYX13DmpW1EINbYfCPF1K9Qc1Y/Zpa4XIBjXlc/PJWt2nKG
	+UQUr1XH7M7G8mrNl1HZMs2eesvm/1QXbAUIvh7Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018083770a18-33bcbd18-1f5c-4ea7-947f-99b87095d05f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60de96114d970b21741bc095b7d0c84de1049dd841eb992e2d98ff41040c48eb
Date: Mon, 2 May 2022 06:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651473058
