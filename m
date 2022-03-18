Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA36315AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647567385;
	h=To:Subject:From:Message-Id:Date;
	bh=E4FYSP1EaPaoLtYKg14TY+VGNbX2vNh5sAYNaM3Al6c=;
	b=PC7udDyJ6t3kemvSxJP+sCKu2cg/+X+o0SUBDGlhdQOZFPuQv5Kaxt5FpPG00DCs
	9reKb9Gd++1+t08W5NZU98z9YeFGg1E0gYG16mTshncDfGud1btopF4LLmRU6oBPQUS
	Kg3wMzSmbqVZxmvz7UpjlXJlDlCn2+vruMn5GJxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647567385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E4FYSP1EaPaoLtYKg14TY+VGNbX2vNh5sAYNaM3Al6c=;
	b=aEp0RCowrr/2bWlGZ+eBMwkSKW6rUV55JLd00TCQa2CnGQ02ucSMSknlEUpYWNuG
	rJpmmbrFxnO+Z+/rO2ebHLYMRZHqA/UL15xM+5qwSxY3z13TjmHzgEV7LdAD9UnsCTG
	fYZnAN75OzqtTqgwzxcU+iq4O32yydAbLh14uLNE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9aab30da-982f080c-a0d2-4395-8152-807579a3a6f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1756ba1a87811bdede087c5de8d7b88b02cbdba63b9485631d4c339c0f7c9f8
Date: Fri, 18 Mar 2022 01:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647567384
