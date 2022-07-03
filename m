Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9021FBA
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 05:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656826012;
	h=To:Subject:From:Message-Id:Date;
	bh=uRj1TRmVgrbN8XnS2Z9qnFKLxr3cwEGmJrPRAlEOQXk=;
	b=XOGdseDqNJs547M1QwuPM6oPHabVOc9rZX/ulFoWgzwBGuAUz2SdSoaUvCf3illd
	mDSxz4YvjwtqR9Mz1m7wUJM+J1+j8S2LcRDhxUcKJnY1FfainzdNaUAb71ExCRfFfsN
	adZSpMYyZy60H4bMRVCsRa8uTq10Jq2UjawfGg5k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656826012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uRj1TRmVgrbN8XnS2Z9qnFKLxr3cwEGmJrPRAlEOQXk=;
	b=AhTPkDeF6j0UNPvkJdrHJD9JeAuecShIhf9EkC+/Ip5sKp35AFnpMB5dm/HlIcYS
	q2mTW1Oc7e5fgWZeWVov2zxx1VAsdKy6UJJ5/aQx9oVoEgE8NWw5SedRsfpBuLEqZ5d
	kcHrrBicIoz2w0nBnVRCXy+ozsdlhKXNwzSF02C0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c286a2da-4cd9352d-a087-4a38-bc71-257f1dfe5389-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98d7247fd7251f47f091fcf39f2263b5ba65fd0fc4a31576b3598466543d8344
Date: Sun, 3 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656826012
