Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B3B220E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 20:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647808284;
	h=To:Subject:From:Message-Id:Date;
	bh=tgOVoppDgeBprHrjKIWBxzXkgbr/f3sgd84I53PwMXM=;
	b=R21oilrkxyA7uaeZK2Svdosmpv6LhhCkYeAfebEM/rWjFOuTPO5fd3TWmmiFf9Qp
	sviPfkkG62JjKjiZWZvBj2TrPh7fZJZnX2pOSdaK4eIeLf+95AF2knCBqhfSuZPfw+g
	+MLJQ6s2mCuIE73bteERgTjOGq4DpEf9DRc+5sRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647808284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tgOVoppDgeBprHrjKIWBxzXkgbr/f3sgd84I53PwMXM=;
	b=eXUriVYGdUJbtyZi1+sy0/rRXALukWVKYJ+1gDczHaeCJlre2V3nVSft5oMGBw2H
	m3OIeC7H2zIr6Jm2Lg/OyVQuxaWLtVkDI9xhjI1HtwbLAP0KyRrRkI3Y4cAvvOdRkNl
	PmStqLt1xpaZ7DS3N+Jw06QMVsxQSpESEAHqmsP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9070867-baf5b317-a492-4979-a5b9-4f751ace36ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fba1adae96bb3baae2195ddfd03f9b7e8bdf23c8607439754ce50edf08e56e0f
Date: Sun, 20 Mar 2022 20:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647808284
