Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8477A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 19:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645991484;
	h=To:Subject:From:Message-Id:Date;
	bh=B4AEfKueySJmFDgItl+BJgKJyN8mfat1tjHCUYYcGlI=;
	b=KsOXTIvUxQAQG6Cpq7XA+bOI2VGPNBzhEh5uXy5MNsxuraREucj5sjThug2mI4Fx
	YqSZBy7vRRycO59ClIZhhy/aqtjZ1F4foXgVI6Yuvb8AK3YF26ynLNo3FcCY0B3pp/e
	F7mnv0yuej5emrhULJMNMQvcNwKdwymX7je6xNAg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645991484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B4AEfKueySJmFDgItl+BJgKJyN8mfat1tjHCUYYcGlI=;
	b=XXkt40cqTGlxPJqwfkAlkQnPRBl0KiOZjQzOIOQR52JdFKsgPIONLkkkDWScNAzF
	3e4Tj3qg5EnrGPfxanK2oIwj5U7dgv5wrjL8BG3LxL3zL2RCYsYb0TsCbTgJOQapKIl
	SKOW/gyObbGJr11RIvSTfeNJLu4IMHW2cFb0F+QM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3cbcdd42-f5387ad4-3d01-4c4c-b6f8-0bb70d6283e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91fbd1997260117f8bd622139ef6663fdc933063c996d8ae71e62a6fbe7a5ff5
Date: Sun, 27 Feb 2022 19:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645991484
