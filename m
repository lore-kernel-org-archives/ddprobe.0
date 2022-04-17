Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5702594
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 18:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650220918;
	h=To:Subject:From:Message-Id:Date;
	bh=aWyYPnxXRlBefwzsyEU0vn7RijSxVBMCB7SJKXq+PLU=;
	b=C2eMqMIGlSlPukb/EK76ant26AmuRizq3UKJgvLJelLPVw3EDEGEg8FoO5abWXcb
	YzhZDY9DsH+KtRjPgp2Zsko94ZUNZsYgB1DhLZFLb5sGYPDBG9LE6sda6AM/MkTKBDu
	9KGuKL1x7TENW8e2KoDfeJ22TIlVaKid2Ex8gFqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650220918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aWyYPnxXRlBefwzsyEU0vn7RijSxVBMCB7SJKXq+PLU=;
	b=M+OoSS/+oiKDJeUXbJ1xT19m0tqVW/43ulbX5ntxCUg1xPfzGE49BHY+THjjT44k
	oqbaCvEexG0p77lOIjHogte01uVfTqcQaR6PwkOCHCZNTzZCm7cgnbBIFpd3NA/4aWJ
	bKI5FUpicAcjoom3xFK7PfnYeQ4lJjbcinV2JQ04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018038d4e5ba-5aff7ac9-9924-495c-b46b-8f8bd1c6d50a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae23f3db7d30093ae4a0a64fbef74312a2385ec106c238893dd3640360035877
Date: Sun, 17 Apr 2022 18:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650220918
