Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5381867
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 17:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650476638;
	h=To:Subject:From:Message-Id:Date;
	bh=MxDfDkt7MlgT29krlrcNCjczUzjQ/SNt7KMJmMR71sY=;
	b=AbICEH1k9UA6uYiE5bC2efDZOiMl30ZXgGoGGfWpUdtNp3aItCfpRzF5tBDFJobT
	hZDoRoyue+BfU0khOSYzKUOBwKXZbmRXrzLrKT1V9UcTIebzd3coU3qxQEWaIgIkxhK
	RUqoi6FQ/RttaSeS1HJv+c2cngc8isvDNhNZ8EcY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650476638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MxDfDkt7MlgT29krlrcNCjczUzjQ/SNt7KMJmMR71sY=;
	b=d0abi/1puSZivFKHuARs9DwqsBV7w78jW/NrAYGUtwTDIraaKH+bhdS6pAMdn1jb
	23KzBonu6Ngji59FbCBQEEE3L/JhgSkNJd/taVjZvQu6EEuG/cbxL7b3NFdlixmYg2p
	bzSWyq93LW0DmYmhdBMNih9R1HhJvV/QmBWP2FvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804812e0bc-66e74de8-0784-4c51-b329-908ba6a8f4cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eaf5a1781d80321a00514b6e5da2e43a272e5bb0f6bb25fb8c0f8c92fdaf5fe3
Date: Wed, 20 Apr 2022 17:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650476638
