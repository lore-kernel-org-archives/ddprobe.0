Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021BD4682
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 06:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649745298;
	h=To:Subject:From:Message-Id:Date;
	bh=0z/M7z/KnvhdBkXOoPNS5R0Pe+gRsINctmtufgZXaJc=;
	b=KsfDZKUBlWj/5PPslqowOqhUkABiyPraX+KmbJ+1eeXwJ0qiJ1Snn/wDeSSsCZ2w
	EEP0DO9AgGbR6+F/2ES7oTail5AwQOYcnX4l9sHRK5/HePNX6OnLQQSQp7irOZxfwW4
	XNgmzs3aVOtokOiVmfF0uKFI9prPa1U/ERDRSsWc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649745298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0z/M7z/KnvhdBkXOoPNS5R0Pe+gRsINctmtufgZXaJc=;
	b=jF/pGC/IL5N3FQtQbtRIquW56ad4maky04880aebizVICdB81F5scYejg/i8A7+C
	Z4kDOkWqKZ4UT7Klxi8WgkOCTmFCdgD5rtFWRc9Q2vzbjTP+Gwn6w8L6XD/HAOeAiej
	y642hjvdt9wkRLqcy0w8NLrTQ1jXZHYgc1zbyK6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801c7b833b-ebcbf5b0-bd07-4927-a770-a6e0a96bee0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfb367bf5fe457d5788200cd7bff94e898a28fa7781158088061928ce905c38d
Date: Tue, 12 Apr 2022 06:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649745298
