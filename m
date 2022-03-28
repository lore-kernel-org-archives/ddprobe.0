Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 839AE182
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 00:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648428298;
	h=To:Subject:From:Message-Id:Date;
	bh=ptp7zzC54tfU3dBBZfgPRhXQj578zyoe9iUkg6NIQqU=;
	b=XmcO9snoZMYfAtH9+3EcJYaVGZ5gSLVleJH5zKymBPKt+L4gWEAuhW/NzwnmAl0U
	UxuLYqCroRm9QrqwwyFAS7Q1Z0kud6qPAuujB2/JCKM6EmmBydNSW0TIKe1L7upoZEd
	sIaPTmmO4Oye+bbpl55jydKC59vFySo72ZrAHCms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648428298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ptp7zzC54tfU3dBBZfgPRhXQj578zyoe9iUkg6NIQqU=;
	b=USeaKzObb4WWZ6ev0Xw1Mz5ksOZYZIW5n1GSiQtWzXOnQTU2za+qM9r0rV8FyoLH
	aH9t8LG00p/z985mlX1czFQNDFI2vYzopwkzTWCPswJyKtEpL2zsBR1OOqTX7HrlgJO
	8ypyXqaJKt17GI89GM4PpkksYEaGheFMb4Dv8ysI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcdfbb01d-19e32739-322b-4f62-96fe-5a9558bb21f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17f43431befaa3241881bcb490f1c98f29afe1e7ba21087227b1bde3eec5cf62
Date: Mon, 28 Mar 2022 00:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648428298
