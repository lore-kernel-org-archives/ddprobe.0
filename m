Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBCF24C63
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646010685;
	h=To:Subject:From:Message-Id:Date;
	bh=FATE32WjYsBDHSCfKOlf94eIgFEqGqkZmYbp3R9FFgY=;
	b=j7CWQqhq7+ECMAVZXZuF6v9QJ7Z4Rbfb71hdu+ZIbDkcnbx5vXM67ZzKvJ8YOzec
	PfQwNz/+idIpjKrFKMMKegWLrK8iJ+Ur0Xn9Sb8uUiK5xPDRuREbvj2ygh1NmCSZXDZ
	0AffnhmQgOpfGE6P2M1YggbcihtXkf1npbqwRWJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646010685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FATE32WjYsBDHSCfKOlf94eIgFEqGqkZmYbp3R9FFgY=;
	b=RDwPlA5g2rnFd+OWGGDUzJUQjYDF4JIpmb3HCyUywejFgXephiL+qkMC6aQUo6dS
	F3/1UrYU8H+3NbjfWSKIk4LB22397med3xFjMHT0OEbK0HdAzNXC1x7Wsjumdnlriok
	IMt2hEXDcMJp3xeFTn9St7Z9eYEiC1Jfvw7BMI2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3de1d54a-0488b7bd-905b-4765-946c-2755b5b8b2c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41b3c9e06bfb15a8b947527df47493da6bae9ed214a557deafb593dff06a92ae
Date: Mon, 28 Feb 2022 01:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646010684
