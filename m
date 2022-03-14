Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF0F7E
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647242184;
	h=To:Subject:From:Message-Id:Date;
	bh=dtKwc4piwCNSYrWmShUTx2f04aOKN+KITZU1C3VFhHo=;
	b=NYo7H0/8GJ4XUobAxKC0zBFUhO5qvvkVnBqDjsmieqJkM7O0BGZQBjzzQpMK2JEn
	E3vKC2A3wlHhsJaT3NiYyXqd0pSjCw+NQzOAltFDc7r/uUjJJtZWHmjzrdKNHEMZqle
	vj0y35VxvP+Ny+AJTR9o464PXAn9IYvcRIk00Ga8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647242184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dtKwc4piwCNSYrWmShUTx2f04aOKN+KITZU1C3VFhHo=;
	b=jkzoBMSXvHOlm4b55MwNECNz5KBiQ3DH+SlGaseG7SBS5JnNY+RCXpNIUhGNGbXP
	mIOTjgH6zgz5S3j4613FFtIZi7HHZo4iNvnZgmRxA9qPNZ/Sb7FV0ulDQ2C3bewmTpA
	oEEczdx3FYsVfVH+WEV4YEexr9U9ajRuHnykvy+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f87490849-261d90b8-b0cd-4efd-bf92-b0b4bfdad6ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cdf9aad72624aa30f441a3738ca5ad8dd3b29506c187a0a44a0fd59000ac111
Date: Mon, 14 Mar 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647242184
