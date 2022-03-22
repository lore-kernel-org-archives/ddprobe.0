Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 927F57A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 02:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647914785;
	h=To:Subject:From:Message-Id:Date;
	bh=7Pnvsx4Wlnwt1c7UNUH/DwTRW4YuTeARbR9tQ05Dixs=;
	b=gPSzIveAKmDhZ4iIoYN+XqSnxfULrV2Af1XVF7+7ajSJmCj/1uuO8M0O4XWj9hVb
	byJ43DRWVAqqmksx5/Ae/NkyKJNcTBTnGc2nAmQDlZiWZk4lYtHPX/ltNSFBroCskYN
	FlduGx+36hlc9We9/VQuo4lv4xk8vfczkAImoSmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647914785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Pnvsx4Wlnwt1c7UNUH/DwTRW4YuTeARbR9tQ05Dixs=;
	b=ctWmGr8tQ+iugneuqdsNsxY48C4lPvdjLih9qmYxCxkATu1RM4GWoifde85nIr6H
	aNC+vY0DMN16G7PwlqxB9pX/vdMw1uYnqlOi2rdkgAqJSOz72emvyfpPt5jN0N3loyW
	tky7cDYiPNqu8r7J9u4o7OZftKU3BNdpbltiveAA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf6017e8-71cd3d3d-3436-4f13-81e8-b555c8a960c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbceca78731750941a298843f6ac01b444f78d0641a29c9c49a642e7dd599fed
Date: Tue, 22 Mar 2022 02:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647914784
