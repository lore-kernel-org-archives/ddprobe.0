Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FDD7C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 00:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650673798;
	h=To:Subject:From:Message-Id:Date;
	bh=Qt8cWRt6n16ygn8J6TvnEfbi40v9iqCv+GN+k/fXe/g=;
	b=lk4n3Q0UgqaEB4VZvKngwcsXhjIPzpgOGTBiQqHzN/Mblv+gFIM815tbc93KOn++
	P0X5rEvRvZKgmyfOP4AoyBETCoYQIlnPiwauNbwSS5eLdoYrb8R4bf6WiriNd7pvCID
	b5V5EJqTVmSvJaL/BN9t4kgwO0Xu38bF3oqXtYgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650673798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qt8cWRt6n16ygn8J6TvnEfbi40v9iqCv+GN+k/fXe/g=;
	b=R5bw2zr4b9iQkSB7ku7sWLNfcM3d70MyM/mgqqq3vE7jaI6sxPgXcjk0RobUg0NP
	02Vsdv2OoK5rJZFwAHICl87bavbnlyzn6I7BNkcmielrq7LSarZrdvWSqo2Jm7Fwu7a
	OW9420kFzucEdM/mkcbd3SswN0obz7DdhJXwyDOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018053d34ccc-8860ffd7-1460-4690-9e57-05cf7e885c95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68e8db28c5b6b8bfdee4bff99c60346ac0ac6d72c37c64477d88763734792872
Date: Sat, 23 Apr 2022 00:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650673798
