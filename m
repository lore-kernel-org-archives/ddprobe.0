Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2227DEA6
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 08:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651134478;
	h=To:Subject:From:Message-Id:Date;
	bh=SwajJIIq/MBxjq3o29QN6VbaQ/bI2YVKAm4WnUrPZ0A=;
	b=iGxT/7355pB1QvE9HhPaoGqh2w2vPLYItyWzZWiF1x1eCEYLcNtYqYTG0F/emRET
	57ixuJpHaRGmJ2uHkr0GitwJsCGD5Y3c3sJnEmCVIvTu54QtREFzheSxjTs20k4eZj7
	0ZM6iE03+wg7EgMLfZ8QmcqnEmg3CpIUf6dCMLUs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651134478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SwajJIIq/MBxjq3o29QN6VbaQ/bI2YVKAm4WnUrPZ0A=;
	b=NFz1GkmLIKk7k9qDzPPW5umRmSyQ44Vp+KjjlhoA3O8lUkqVNqqOerSSLTu2acS1
	XdoUMWzWsEr/0xtIU0whmVdAlxG2BBIfqvwa6GEuuryRYPMFhGa8Nf21DLVYcoT6dYW
	k0SrVsxwKVToJUribMSd3urNu8xcHrK+tZ8l+TGg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806f48b7f7-7c7f66ca-99d5-44cd-85a7-e51bf56c6158-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1547a986629f468ce7d6aac038ba0960872f41d723cef730ae49ac851cf0ebd
Date: Thu, 28 Apr 2022 08:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651134478
