Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9E22622
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 00:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646353584;
	h=To:Subject:From:Message-Id:Date;
	bh=kTg13l1dCMqMNzo8V5M9Yo20eaOEqilUlhmr4xiy7FA=;
	b=Mnh3NbzEuz7cHb6+GXOkHqerxTIOrwBRdnP9pAVM3KSkzT91GE0oX0KwYWlNwaks
	yYqyumUuZdrRfHwT5eMwpiid31zJtAXmEKu85VTo4zwMWgMKMBcS/UW0ddJkzZOdwnF
	gDKaRDFVs6egahte/3VqrdGpU+4sPMjrpq7wZsvs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646353584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kTg13l1dCMqMNzo8V5M9Yo20eaOEqilUlhmr4xiy7FA=;
	b=de1D7JbVcTT5mzMiTJopLfcjXs0Efuh58mHS8h6j5EEk+Ww2amxV+3wkUvo1dA0V
	74iE6tWuN4XLQhC6OmTbdZ9qWipyG04ialJlXM8cA7rSq+Th2cYREKZs8Oyl6lXgxF6
	uphvGSbW5m8mPgRoqufrCXKMjBXsS7qMzXe8mFho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52521271-7fdd1c35-f442-4493-b362-f612443c8aba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2379810a3582710ec38a0d3b0df83e82a22373e17a618533422a1bfeb278ecf8
Date: Fri, 4 Mar 2022 00:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646353584
