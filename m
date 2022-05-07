Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94C1A7F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 13:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651931519;
	h=To:Subject:From:Message-Id:Date;
	bh=vlv9PhkaQ14ARd+3v+ALTnhBXg79pXXJcJN0x484oBQ=;
	b=BKIKLRH/BB236liEUtKIWW96m0wixWRXojhbrU0nYW/wisuIk13HfrGNW7yPaazX
	bCS2MxmB20wjWtKGEBYdsER6cfwZZfhFzS9016OwQFDl+MPHvcw5Ydv88Kbm1cfKteh
	/ZFy8iR/ZeClH1e3qxCe/witr2xviCL9yOw71Lto=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651931519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vlv9PhkaQ14ARd+3v+ALTnhBXg79pXXJcJN0x484oBQ=;
	b=BhjjkGR7lyolOs9uKHrZeQ+uyVhhFjKzA3tKH7VjjFQAHR8cHtHPnyjaeAZuNedU
	G22/kdw+dCRdXeECeXs6+13GqBo1DVTzbkoz/zA2AXTzRhquJUcu9/Gc7Ek25OLuxJZ
	evtp/MRwCaI9XeZtQhKQbRilqApCrobGmGPsh1EQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809eca9552-fac650f1-7528-4cf3-a680-a0e1c5834cdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0716a1dd10d45058c320774ce90bbd733b26feb9be66be799a158d847a179c26
Date: Sat, 7 May 2022 13:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651931518
