Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0947B65B
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 04:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657256212;
	h=To:Subject:From:Message-Id:Date;
	bh=QA8SPoJn8xE91EErYQgUSGPSZx1Kx8j3v6hBsn7NW3Y=;
	b=lgJAOn9Xyg2JmQpI8029MgCnered6RMjf0KWbnjRACXFujfM8ewPhYMCIU/Kp9zB
	2uxruchOQPtJyXHiNAbFg3Dgb1S7tlQrcigsgmOK6eys/w/jvPkZuZ73GPR1ujgUWsK
	XsQ4JywdKj/L7UCz64Kn1nYZ0bC6zzQ89hlbO7IQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657256212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QA8SPoJn8xE91EErYQgUSGPSZx1Kx8j3v6hBsn7NW3Y=;
	b=YBv4e8jVMep3jas9xMCSIaIzrTnAeovlkrhAm9+OQxFoPL7GT2HvhHoa8M32xQ6y
	9erO9kQihHHIiiO6M7QJXLHdK2KkUKns24cE1WH7As2Ydzm6u9TCRp7HmPt6VaccAzj
	zE+Nc+jeDy12M753lA+r4cfsXOmZnfTeccl1nJCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dc2af72b-2fb80a27-9d54-4598-9a1e-b0249918a948-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a77724eb0f702b569c18b811875e96e698d37922f42588a7e35f9170b45c8724
Date: Fri, 8 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657256212
