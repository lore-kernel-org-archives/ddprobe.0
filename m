Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0460B10F0
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 07:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650440878;
	h=To:Subject:From:Message-Id:Date;
	bh=knqZC8ixO4SKc+7MRZA2e42vCsPoQ4U7UTAFqvgdgig=;
	b=A00JxfAKQ7B2mygioSt4XI7Bw9b0tLulf73Z1/kpYBt3gdko2RlmpMzcaM98V4ti
	xEW3G42ma2c0/EohFxKlVbSJmQyxSbFHj9oRFPkKTVptvRcscUKZxHjAmxAgj4LahZI
	htYPzSZbaMD21aw6NEpDzxX5LsYO3V/6xQTWE/x4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650440878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=knqZC8ixO4SKc+7MRZA2e42vCsPoQ4U7UTAFqvgdgig=;
	b=AMphBvDgfjCflsIqCoJIJzb4mn0uK7d8ey2Sn5z42SiW2VNdOi+w8vnp8Wwao3p1
	ASsVPyl3k1GPDebu/N7iR2nEtFD+suv1GL2KqI66teIhNuzAqZDrmASX9l+rWlST3RV
	E6C3khQOuWjyM8bbJ609CuJAP7kSjHF0l6URXoHM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018045f138fe-ca2faf83-c6c9-4c12-9ef8-cd865e773592-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 794beab2236566ed8c8b3a9dd868f955fd35edc58bec8efb958517fb31088b83
Date: Wed, 20 Apr 2022 07:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650440878
