Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5EE2F56
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 07:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648279378;
	h=To:Subject:From:Message-Id:Date;
	bh=yWq50G/Woj5lUwt1LwHaxazYT/KPkGY6ovD2RG7Rqmc=;
	b=NTNtlYo21L5XAF9wQsMaKm8aV8QVN3OBVGc6n8xQK+QaWfMqCgLEFwtJvL2zBC+C
	KKty4kAQEs1Or/dSJfMcB7LxCW3INXyPcTTJDRMcQlYE2tQgfzCXLXsXLAtjUbguqj1
	p6tLlGjKTD7ZfiF5yk565MuQie4wQX3yTD2veiQg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648279378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yWq50G/Woj5lUwt1LwHaxazYT/KPkGY6ovD2RG7Rqmc=;
	b=j20W+OEiJzvs2QFI7JHLjQSxb7lZRDnIasuuCAnXjJWni4BGeoZ2ey/DLcPOApuX
	trUA3lo1x3fFzla9yPPKs4rrAOWyY0/rjY5nmsZ3PNFNAtDukIrIS+2C6CHvq/7u0Uu
	obJ2plN1ptzxp4IR6v8tDZQIVqCGZOGp4KkuNNrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc51b5971-25f7ef06-6ecc-4a20-861a-211237ee0c1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 177b204920cf2e04a6c52951623272b852e8687e4700c108eb944174acb467ee
Date: Sat, 26 Mar 2022 07:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648279378
