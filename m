Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B045137
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647636984;
	h=To:Subject:From:Message-Id:Date;
	bh=TLuWBiN+v6uGz1/JBqpTNhk3WDUk7FNFgAJ8v/rCjAs=;
	b=W9qS7kptr92BcrMymM3KbNWa1Jr8zfJ+S6vXJFRlwAECpUd5spKXgRfW6YivWRyW
	ppctFfszMbljUdwEe1RrrxSVaoFX8Fm/O+t+/fdl7Zo8oF4Z/Y6M35IVwz72WAqz1AV
	viT9SBWylx4xSUEbONg6fj7SEYaKqYIjkexvmxgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647636984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TLuWBiN+v6uGz1/JBqpTNhk3WDUk7FNFgAJ8v/rCjAs=;
	b=dnKr4Mz2Ri7l7Jb6VhZjwEGPWxSpPSluUzEYJCWlS4fO6C/nW22iyyrPMSq4icSV
	uBWg6JJ9E/LXUa31BhQWnbJ42Lq8Ebz2vG/wJxzjDmKdPt2yZLt/ec1i65UYyYyGnoo
	hwRFCjBYmizj0pzLj5Ke9dOxUJ0kjo4A+7dI0JIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ed133b1-956af0f1-7aa5-4260-a046-81e946dbda9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d16ae2214eca66ceeaa0702c83d9dc84c20f49c85a692919246c176276b862c
Date: Fri, 18 Mar 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647636984
