Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CD836A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 23:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652571119;
	h=To:Subject:From:Message-Id:Date;
	bh=Zzgjr/z5mbAgvPuSrmbqboA86WEfp5x8eHdkgVU8dHI=;
	b=hMHee2/T5MLKtv1opzFXi1xYDLS/lsMvLLGt6egaG6k5Q2Qq4YrgO5od4SE7C5Sl
	fdDHfv1+v3++C/GZpyqCBZ+3TqWGstdaBYI1W4LuqaE2eQKigYRhuxU+qkl6K3doZL0
	kpTqCjNLuS69ZSwdTpffs0+ZVwGN2MN8ydC/Kur0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652571119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zzgjr/z5mbAgvPuSrmbqboA86WEfp5x8eHdkgVU8dHI=;
	b=kibwF0A5zWS0BltZ9Ma8mKnSIlgiB3BK03pgSGsRBkNiqNhtA4xnB3ZCez8gB5IO
	uYRhX+KgJ1Ko4+j5PwtLzuRe06W/JDiM20VOpNwKwUqqUANQY+bwcCPL29fihn27flZ
	vH0boF/9Yls5X6g17WLCd/xwtSdyJzvepTrNQw68=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c4ea1ee1-2fb71b48-b604-4cd0-9450-c0745be61b54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4bb08f1f014c9916ee87b5dc33606039918cf51d5bc060588a9bcdf57fd7f41
Date: Sat, 14 May 2022 23:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652571119
