Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667BD2F33
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 03:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646711484;
	h=To:Subject:From:Message-Id:Date;
	bh=hD9e0a+bC8NEGDpshGjLIs1KAKsLkt2ke6Htn4fI8cA=;
	b=FzJQDQcWkO2GAIjtYrZfP+72rXpyMK7ss0q1zrg3VCVusuNwm/1cAmlcaa8hJnN4
	ns6biKc2tHjjjklRdWyJF7oIEmItK3UPAcJcdQV321s9oTFVghKNvRTQ776Q99XsLNW
	Dnff0WTZbXYPMTuH9KRq80AvMd/x0pVma7ncKs+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646711484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hD9e0a+bC8NEGDpshGjLIs1KAKsLkt2ke6Htn4fI8cA=;
	b=Y/YEXFctSN2plnqSIF+LwP3YADgmOLgb7JfcVszlQ02KZW7ZErYMl9IvksfZQ1FR
	odW9qfKIww2LhrcpjxjxeGpWiK/Bm1KbVElRskSYG9XbZiRQsa6/0TYVDLYXd5EuvjL
	/S6kmR4dBbHaxSxJbzo+t65HdJOLIoX+J5KeSQMc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f67a73127-944ef188-de69-495e-872f-9921f6c21cb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca23442b9e71016d17f4edfbbf2aa20875a71a83c91ff37d6f9cacab74d82012
Date: Tue, 8 Mar 2022 03:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646711484
