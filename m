Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FFA27A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 04:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646886384;
	h=To:Subject:From:Message-Id:Date;
	bh=Igoe9MpqkVz6qBDoExVopGZP4dPSuobRAKM3U4kv4Hc=;
	b=k7F+sDpiTV85AZz9Gn8y7+z8TKqzT9I+eUDadU5JMGs1SITcxVypU1ZUcDw1MEf9
	Imh25sr4do+27XqYn62Axxt5k7wTphEnWdoWh4bGsmTn2xWAzZV/bNpP8E6k9bYPOA+
	uB/AGrPBGPAaFflBmQSb2c9oL3vm1QoZ40knsNxI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646886384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Igoe9MpqkVz6qBDoExVopGZP4dPSuobRAKM3U4kv4Hc=;
	b=XTBIXSYv63Gr112kJ1GMOjnVCSXgkxODR6lj1SpSsMOWZeffpLGADFbjBvfbINHW
	/I45bDHHj+u5UkWg3KZpPhBOGMgxQrKPsB8phf40mpFfQXZD7eYea3tY12Kn0P6y5nS
	SVf93zTnSDJn2SvciLVd40p3uaM4s2tMDLpKxjgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7213f481-cac0ddf6-187e-43e2-a444-800d50e3dee9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 980b319c0a4037c44b06bdbf29fd41734142519c57ba7187e81f3c81794f72c4
Date: Thu, 10 Mar 2022 04:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646886384
