Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6884B3B2B
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645086985;
	h=To:Subject:From:Message-Id:Date;
	bh=1O709upHH5OMyLIRWuk7bACsigOZtK+PxLYtkoqcVUM=;
	b=gdy8kwN96JLE7YKuQvIczYonzAnxry2gJ1E0jAqzDWy2vIO97nnGQyiYazwql+Oe
	UvTh7Z2RnkAPLeYr0k7wWs4HgqREOg7nu0FbwSa0LHkExRJKO4CLBb+32pju1LHOqz4
	9h1qfUbbtvHlS6nIDdzBdnBTnb9PXcQtMDZAkFg0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645086985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1O709upHH5OMyLIRWuk7bACsigOZtK+PxLYtkoqcVUM=;
	b=G4e+797UstkqTEgDRYVIy5iU//PFz3b/xDM6aRnoaNo68lk1HnvHviXHrIUC4pYk
	Nbgh1dPqfDWOCU8JcYThxa7wiuS/sncVDA5GdN2MItH/TGffOWCB5fb9ZbFjJer8zuI
	/nbfczTczN7Lt7Y6QvrqVw5W+d0KOyE512zbfKBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f06d34a37-d68e4dca-88c7-40f4-80fe-eff494f16dbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf70a82a26f96180e638ce449fbbe6bc56819067d3f2c7a4f9b5a2374cc9e18c
Date: Thu, 17 Feb 2022 08:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645086984
